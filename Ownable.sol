pragma solidity 0.4.25;

contract Ownable {
    address private _owner;

    constructor() public {
        _owner = msg.sender;
    }

    function owner() public view returns(address) {
        return _owner;
    }

    modifier onlyOwner() {
       require(msg.sender == _owner);
       _;
    }
}
