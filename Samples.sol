pragma solidity 0.4.25;


contract Samples {
    address _bank;
    address _trustedBank;

    function something (uint256 amount) {
        // Untrusted address (bank)
        _bank.withdrawal(_amount);
    }

    function trustedSomething (uint256 amount) {
        // Address we own (trusted)
        _trustedBank.withdrawal(_amount);
    }
}
