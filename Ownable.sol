pragma solidity ^0.6.0;

contract ownable {
    address payable _owner;

    constructor() public {
        _owner = msg.sender;
    }
    modifier onlyOwner() {
        require(isOwner(), "You are not the owner)");
        _;
    }
    function isOwner() public view returns(bool) {
        return (_owner == msg.sender);
    }
}
