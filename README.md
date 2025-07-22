# GuestBooking Smart Contract

This Solidity smart contract allows users (guests) to store their favorite number and name on-chain. Additionally, it supports managing a list of people and retrieving stored data efficiently.

## 🚀 Live Deployment

- **Network**: Sepolia Testnet  
- **Contract Address**: [`0xe95aa0564efd69676901a9ad0f28f903aa0a1b6b`](https://sepolia.etherscan.io/address/0xe95aa0564efd69676901a9ad0f28f903aa0a1b6b)  
- **Deployer Address**: [`0x3E0b2c2d13fC6350Ae53f17Fdf70dD9627b321c7`](https://sepolia.etherscan.io/address/0x3E0b2c2d13fC6350Ae53f17Fdf70dD9627b321c7)  
- **Transaction**: [`0xfdaf9a...fa080c`](https://sepolia.etherscan.io/tx/0xfdaf9adb37e3a222188b3c929171fbaac5296267d4d3a31ce5e614bbb6fa080c)

---

## ✨ Features

- Store a guest’s favorite number and name.
- Retrieve the most recently stored guest information.
- Maintain a dynamic list of people with their favorite numbers.
- Lookup favorite numbers using names via mapping.
- Emits events upon adding guests or storing data.

---

## 🛠️ Contract Structure

```solidity
struct Person {
    uint256 favNum;
    string name;
}

Person[] public listOfPeople;
mapping(string => uint256) public favNumOf;


## 🔧 Core Functions

| Function                         | Purpose                                               |
|----------------------------------|-------------------------------------------------------|
| `storeYourFavNumberAsGuest()`    | Temporarily stores a guest's favorite number/name     |
| `retrieveRecentFavNumAsGuest()`  | Retrieves the latest stored guest info                |
| `addPerson()`                    | Adds a person to the public guest list                |
| `getListOfPeople()`              | Returns the full list of all added guests             |
| `favNumOf(name)`                 | Gets a guest’s favorite number by name (mapping)      |


## Events
- PersonAdded(uint256 favNum, string name)
- GuestFavNumberStored(uint256 favNum, string name)

---

## 🧪 Testing
- You can use Remix IDE for simple testing:
- Open Remix.
- Paste the contract into a new Solidity file.
- Compile with Solidity 0.8.x.
- Deploy using Injected Provider - MetaMask for Sepolia.
- Interact using the Remix UI.
- Advanced testing (e.g., with Hardhat or Foundry) can be added later.

---

## ⚠️ Disclaimer
This project is shared for educational and demonstrational purposes only.
It is **not licensed for reuse, modification, or distribution**. Please do not copy, fork, or republish the code without explicit permission from the author.
If you're interested in collaborating or using this code in any way, feel free to reach out.

