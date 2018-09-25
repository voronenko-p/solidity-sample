pragma solidity 0.4.25;

import "./SafeMath.sol";
import "./Ownable.sol";

contract SafePayable is Ownable {
    using SafeMath for uint256;

    mapping(address => uint256) public balances;

    function () public payable {
        uint256 addedValue = msg.value.mul(2500);
        balances[msg.sender] = balances[msg.sender].add(addedValue);
    }
}
