# HashMeDaddy Smart Contract

## Description

HashMeDaddy is a fun Ethereum smart contract for hashing strings using the `keccak256` algorithm. It also includes basic ownership and withdrawal functionalities.

## Features

- **Hashing**: Easily hash strings using the `HashMeDaddy` function.
- **Ownership**: The contract creator is set as the initial owner. Ownership can be transferred.
- **Withdraw Funds**: The owner can withdraw any Ether stored in the contract.

## Prerequisites

- A web browser
- [MetaMask](https://metamask.io/) or similar Ethereum wallet
- [Remix IDE](https://remix.ethereum.org/)

## Setup and Deployment

### Open Remix IDE

Navigate to [Remix](https://remix.ethereum.org/) in your web browser.

### Import the Contract

1. Click the "File Explorers" icon (the one that looks like a page).
2. Click "Import from GitHub" and paste the link to this GitHub repository.

Or simply create a new Solidity file and paste the contract code into it.

### Compile the Contract

1. Click the "Solidity Compiler" icon (the one that looks like a "magic wand").
2. Select the appropriate compiler version (as specified in the contract) and click "Compile".

### Deploy the Contract

1. Go to the "Deploy & Run Transactions" tab (the one that looks like a "plug").
2. Select the environment as "Injected Web3" to connect to MetaMask or choose another environment that you're comfortable with.
3. Click "Deploy".

## Usage

### Hash a String

1. Go to the "Deployed Contracts" section.
2. Locate your deployed HashMeDaddy contract.
3. Use the `hash` function and provide a string to hash.

### Transfer Ownership

1. Use the `transferOwnership` function and provide the address of the new owner.

### Withdraw Funds

1. Use the `withdrawFunds` function to transfer the contract's Ether balance to the owner.

## Contributing

Feel free to submit a pull request if you want to contribute or find any bugs.
