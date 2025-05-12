
# 🧾 NDDC Blockchain Prototype

A decentralized web application (DApp) developed to demonstrate blockchain-driven transparency and accountability in public fund management. This project simulates a smart contract-based platform for the Niger Delta Development Commission (NDDC) to track and disburse project funds securely and transparently on the Ethereum blockchain.

## 🔍 Project Overview

Public institutions in developing regions, such as the NDDC, often struggle with inefficiency, corruption, and mismanagement in handling project funds. This prototype leverages blockchain's inherent features—immutability, decentralization, and transparency—to build trust and automate financial processes through smart contracts.

The prototype includes:
- A **smart contract (Solidity)** deployed to Ethereum Sepolia testnet
- A **web-based frontend** built with HTML, JavaScript, and Web3.js
- MetaMask integration for secure wallet interaction

> 🔗 **Live Demo**: [https://nddc-blockchain-prototype.vercel.app](https://nddc-blockchain-prototype.vercel.app)  
> 💻 **Smart Contract**: `contracts/ProjectFunding.sol`

---

## 🛠 Features

- ✅ Smart contract deployment on Sepolia testnet
- ✅ ETH deposits to the contract via MetaMask
- ✅ Admin-only fund disbursement to recipients
- ✅ Transparent transaction history with timestamps
- ✅ Real-time connection to Ethereum using Web3.js

---

## 🚀 Technologies Used

- **Solidity** (Smart contract development)
- **Ethereum** (Sepolia Testnet)
- **Hardhat** (Smart contract compilation & deployment)
- **JavaScript + Web3.js** (Frontend blockchain interaction)
- **MetaMask** (Wallet connection)
- **Vercel** (Frontend deployment)

---

## 📦 Installation & Local Setup

To run locally:

```bash
# Clone the repository
git clone https://github.com/amirofekiti/NDDC-Blockchain-Prototype.git

# Navigate to the project directory
cd NDDC-Blockchain-Prototype

# Install dependencies
npm install

# Run local development server
npm run dev
```

Make sure to:
- Install and configure **MetaMask**
- Use the **Sepolia Testnet** with test ETH
- Set up your `.env` file (optional, for Hardhat deployment)

---

## 🔐 Smart Contract Functions

### `deposit() payable`
- Accepts ETH deposits from any user.
- Emits events on successful transfer.

### `disburse(address _recipient, uint256 _amount)`
- Transfers specified ETH to a recipient (admin only).
- Records the transaction in the on-chain history.

### `getTransaction(uint index)`
- Retrieves a specific transaction from history.

### `getTransactionCount()`
- Returns total number of disbursements made.

---

## 🧪 Demo Walkthrough

1. Connect MetaMask to Sepolia testnet.
2. Deposit ETH via the DApp input form.
3. As admin, disburse ETH to a recipient wallet.
4. View the immutable transaction records.

Use [Etherscan Sepolia](https://sepolia.etherscan.io/) to verify on-chain activity.

---

## 🤝 Contributing

Contributions are welcome! If you'd like to improve the UI, extend functionality (e.g., add audit trails, notification systems), or integrate with legacy systems, feel free to fork and submit a pull request.

To contribute:
1. Fork the repository
2. Create a new branch (`git checkout -b feature-xyz`)
3. Commit your changes (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature-xyz`)
5. Open a pull request

Please follow clean code practices and add relevant documentation where necessary.

---

## 📄 License

This project is open-sourced under the MIT License. See `LICENSE` for more information.

---

## 👤 Author

**Opeyemi Osho**  
MSc IT Project Management, Teesside University  
[LinkedIn](#) | [GitHub](https://github.com/amirofekiti)
