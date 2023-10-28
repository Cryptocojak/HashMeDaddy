// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HashMeDaddy {
  
  address payable public owner;
  event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);
  event FundsWithdrawn(address indexed owner, uint256 amount);
  event FundsReceived(address indexed sender, uint256 amount); 

  constructor() {
  owner = payable(msg.sender);
  }

  function hashMeDaddy(string memory _string) public pure returns(bytes32) {
     return keccak256(abi.encodePacked(_string));
  }

  function transferOwnership(address payable newOwner) public {
    require(msg.sender == owner, "Only daddy can transfer ownership");
    require(newOwner != address(0), "New daddy cannot be the zero address");
    
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }

  function withdrawFunds() public {
    require(msg.sender == owner, "Only daddy can withdraw funds");
    
    uint256 amount = address(this).balance;
    emit FundsWithdrawn(owner, amount);
    
    owner.transfer(amount);
  }

  receive() external payable {
    emit FundsReceived(msg.sender, msg.value);
  }

}

