// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

// BoxV1 upgraded to BoxV2.
contract BoxV2 is UUPSUpgradeable {
    uint256 internal value;

    function setValue(uint256 newValue) public {
        value = newValue;
    }

    function getValue() public view returns (uint256) {
        return value;
    }

    function version() external pure returns (uint256) {
        return 2;
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}
