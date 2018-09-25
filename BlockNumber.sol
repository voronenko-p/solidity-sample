pragma solidity 0.4.25;

contract BLockNumber {
    function foo() public view returns(uint256) {
        return block.number;
    }
}
