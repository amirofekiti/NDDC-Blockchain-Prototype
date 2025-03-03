const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account:", deployer.address);

  const ProjectFunding = await ethers.getContractFactory("ProjectFunding");
  const projectFunding = await ProjectFunding.deploy();
  
  // Wait for deployment (Ethers v6)
  await projectFunding.waitForDeployment();
  
  console.log("ProjectFunding deployed to:", projectFunding.target);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
