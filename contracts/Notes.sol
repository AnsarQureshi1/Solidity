// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

//this accessible in the contract
enum Speed { high , medium , low}
contract Notes{

    // for enum min value
    function EnumMinVal()public pure returns(Speed){
        return type(Speed).min;
    }

    // for enum max value
    function EnumMaxVal()public pure returns(Speed){
        return type(Speed).max;
    }

}