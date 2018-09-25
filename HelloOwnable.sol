pragma solidity 0.4.25;


import "./Ownable.sol";

contract Hello is Ownable {
    string _text;

    constructor (string text) public {
        _text = text;
    }

    function showText() public view onlyOwner returns(string) {
        return _text;
    }
}
