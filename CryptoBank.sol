pragma solidity 0.4.25;


import "./Ownable.sol";

contract CryptoBank is Ownable {

    event Paid(address sender, uint256 balance);

    function () public payable {
        emit Paid(msg.sender, msg.value);
    }

    function withdrawal() public onlyOwner {
        msg.sender.transfer(address(this).balance);
    }

    function balance() public onlyOwner view returns(uint256) {
        return address(this).balance;
    }
}
