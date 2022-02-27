// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.11;

import {DSTest} from "@ds/test.sol";

import {UkraineDAO_NFT} from "../UkraineDAO_NFT.sol";

contract UkraineDA0_NFTTest is DSTest {
    UkraineDAO_NFT public ukraineNFT;

    function setUp() public {
        ukraineNFT = new UkraineDAO_NFT(address(this));
    }

    function testChangeOwner() public {
        ukraineNFT.changeOwner(0x00a329c0648769A73afAc7F9381E08FB43dBEA72);
        assert(ukraineNFT.owner() == 0x00a329c0648769A73afAc7F9381E08FB43dBEA72);
    }
}
