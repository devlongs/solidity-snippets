// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract D {
    uint public x;
    constructor(uint a) {
        x = a;
    }
}

contract C {
    address public dis;

    function getSalt(uint256 _salt) public pure returns(bytes32){
        return bytes32(_salt);
    }

    function createDSalted(bytes32 salt, uint arg) public {
        D d = new D{salt: salt}(arg);
        dis = address(d);
        //require(address(d) == predictedAddress);
    }
}

//0xDA0bab807633f07f013f94DD0E6A4F96F8742B53