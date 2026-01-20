// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Ganesh is ERC20 {
    constructor() ERC20("Ganesh", "GANESH") {
        // Mint 88 million tokens to the deployer
        // ERC20 uses 18 decimals by default, so we multiply by 10^18
        _mint(msg.sender, 88_000_000 * 10**decimals());
    }
}
