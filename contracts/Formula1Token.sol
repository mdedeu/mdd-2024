// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.27;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Formula1Token is ERC20{

    uint256 public constant PRICE = 0.001 ether;
    uint256 public constant MINT_AMOUNT = 10 * 10 ** 18;

    constructor() ERC20('Formula1Token', 'F1'){}

    function mint(address account) external payable {
        require (msg.value == PRICE, 'invalid amount of ether');
        _mint(account, MINT_AMOUNT);
        //ether now locked in the contract, no transfer function
    }
}
