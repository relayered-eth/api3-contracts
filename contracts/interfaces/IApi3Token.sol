//SPDX-License-Identifier: Unlicense
pragma solidity ^0.6.8;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


interface IApi3Token is IERC20 {
    function updateMinterStatus(
        address minterAddress,
        bool minterStatus
        )
        external;

    function mint(
        address account,
        uint256 amount
        )
        external;
}
