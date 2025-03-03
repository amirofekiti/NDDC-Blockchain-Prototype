require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config(); // Load environment variables from .env

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.28",
  networks: {
    sepolia: {
      url: process.env.SEPOLIA_RPC_URL, // Infura/Alchemy URL from .env
      accounts: [process.env.PRIVATE_KEY] // Deployer's private key from .env
    },
    localhost: {
      url: "http://127.0.0.1:8545"
    }
  }
};
