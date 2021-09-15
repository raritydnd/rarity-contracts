// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

interface IRarity {
    function adventure(uint256 _summoner) external;
}

/**
 * @title CellarTime
 * @dev sends multiple summoners on the Cellar
 */
contract CellarTime {
    IRarity rarity = IRarity(0x2A0F1cB17680161cF255348dDFDeE94ea8Ca196A);

    function cellarTime(uint256[] calldata _ids) external {
        uint256 len = _ids.length;
        for (uint256 i = 0; i < len; i++) {
            rarity.adventure(_ids[i]);
        }
    }
}
