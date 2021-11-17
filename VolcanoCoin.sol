pragma solidity >0.8.0;
// SPDX - License - Identifer: Unlicensed. 

contract VolcanoCoin {
    uint256 totalsupply = 10000;
    
    function showsupply() public returns (uint256) {
        return totalsupply;
    }
    
    function increasesupply(uint256 additionalsupply) public onlyowner() {
        uint256 newtotalsupply = totalsupply + additionalsupply;
        emit changesupply(newtotalsupply);
    }
    
    address owner; 
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyowner() {
        require(owner == msg.sender
        _;
    }
    
    event changesupply(uint256);
    
    increasesupply(1000);
    
}
