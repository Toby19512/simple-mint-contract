# Simple Mint Contract

This is a beginner-level Solidity smart contract that demonstrates how minting works in a simple token system. The contract allows users to mint a limited number of tokens while keeping track of their balances and the total supply.

## 🧠 Project Overview

The contract includes:

* A `mint()` function that lets users mint tokens within a defined range.
* Basic state variables: `balanceOf` (tracks user balances) and `totalSupply`.
* A simple require statement to ensure valid mint amounts.
* Public visibility for transparency.

This project was built as part of my early learning phase in **blockchain engineering** using **Foundry** as the development environment.

## ⚙️ Technologies Used

* **Solidity**
* **Foundry (Forge)**
* **Ethereum Virtual Machine (EVM)**

## 🚀 How It Works

1. Deploy the contract to a local or test network using Foundry.
2. Call the `mint(uint256 _getamount)` function with a value between 1 and 5.
3. The sender’s balance and total supply update automatically.

## 🧩 Example

```solidity
function mint(uint256 _getamount) public {
    require(_getamount > 0 && _getamount <= 5, "Invalid amount");
    balanceOf[msg.sender] += _getamount;
    totalSupply += _getamount;
}
```

## 📘 Notes

This is a learning project created to understand the fundamentals of:

* State management in Solidity
* Function logic
* Using Foundry for compilation and deployment

## 🧑‍💻 Author

**Tobenna Samuel**
Aspiring Blockchain Engineer | Solidity Learner

Feel free to fork, clone, or suggest improvements!
