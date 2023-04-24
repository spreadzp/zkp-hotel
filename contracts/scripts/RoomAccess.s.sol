// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./../forge-std/src/Script.sol";
import "../src/PlonkVerifier.sol";
import "../src/RoomAccess.sol";

contract RoomAccessScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("TEST_PRIV_KEY");
        vm.startBroadcast(deployerPrivateKey);

        PlonkVerifier pv = new PlonkVerifier();
        RoomAccess sm = new RoomAccess(address(pv));

        vm.stopBroadcast();
    }
}