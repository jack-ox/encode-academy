pragma solidity >0.8.0;
// SPDX - License - Identifer: Unlicensed. 

contract VolcanoCoin {
    uint256 totalsupply = 10000;
    
    function showsupply() public returns (uint256) {
        return totalsupply;
    }
    
    function newSupply(uint256) public onlyowner() {
        uint256 newtotalSupply = totalsupply + 1000;
        emit changesupply(newtotalsupply);
    }
    
    address owner; 
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyowner() {
        require(owner == msg.sender)
        _;
    }
    
    updateOwnerAddress(address newOwner) public onlyOwner {
    owner = newOwner;
    }
    
    event changeSupply(uint256);
    
}
