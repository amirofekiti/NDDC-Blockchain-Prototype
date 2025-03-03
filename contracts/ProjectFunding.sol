// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProjectFunding {
    address public admin;
    uint public totalFunds;
    
    struct Transaction {
        address recipient;
        uint amount;
        uint timestamp;
    }
    
    Transaction[] public transactions;
    
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call this.");
        _;
    }
    
    constructor() {
        admin = msg.sender;
    }
    
    // Function to deposit funds into the contract.
    function deposit() public payable {
        totalFunds += msg.value;
    }
    
    // Only admin can disburse funds to a project recipient.
    function disburse(address payable _recipient, uint _amount) public onlyAdmin {
        require(address(this).balance >= _amount, "Insufficient funds.");
        _recipient.transfer(_amount);
        transactions.push(Transaction(_recipient, _amount, block.timestamp));
    }
    
    // Get the number of disbursement transactions.
    function getTransactionCount() public view returns (uint) {
        return transactions.length;
    }
    
    // Retrieve a specific transaction’s details.
    function getTransaction(uint index) public view returns (address, uint, uint) {
        Transaction memory txn = transactions[index];
        return (txn.recipient, txn.amount, txn.timestamp);
    }
}
