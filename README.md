# GuestBooking Smart Contract

A beginner-friendly smart contract written in Solidity that demonstrates how to store guest information, use mappings and structs, and emit events. Built and tested entirely in [Remix IDE](https://remix.ethereum.org), this contract is part of my journey into smart contract development and Ethereum fundamentals.

---

## 📌 What This Contract Does

The `GuestBooking` contract allows you to:

- Store a temporary guest's favorite number and name
- Add multiple people to a persistent guest list
- Retrieve the full list of guests
- Quickly look up a guest's favorite number using a mapping
- Emit events for transparency and off-chain listening

---

## 💡 Contract Overview

```solidity
struct Person {
  uint256 favNum;
  string name;
}

Person[] public listOfPeople;
mapping(string => uint256) public favNumOf;
