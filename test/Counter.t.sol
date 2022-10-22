// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
// import "../src/Counter.sol";
import "../src/ERC721.sol";

contract CounterTest is Test {
    ERC721 erc721;
    address bob = address(0x1);
    address mary = address(0x2);

    function testMintToken() public {
      erc721 = new ERC721();
      erc721.mint(bob, 0);
      address owner_of = erc721.owner_of(0);
      assertEq(bob, owner_of);
    }
}
