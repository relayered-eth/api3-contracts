//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


interface IApi3Token is IERC20 {
    event MinterStatusUpdated(
        address indexed minterAddress,
        bool minterStatus
        );

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

    function getMinterStatus(address minterAddress)
        external
        view
        returns(bool minterStatus);
}
