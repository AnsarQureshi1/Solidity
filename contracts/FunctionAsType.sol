// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Practice {
    function Helper(uint[] memory a, function (uint) returns (uint) f) internal {
        for (uint i = 0; i < a.length; i++) {
            a[i] = f(a[i]); // Pass the array element to the function
        }
    }

    function testing(uint[] memory arr) public returns (uint[] memory) {
        Helper(arr, square);
        return arr;
    }

    function square(uint n) internal pure returns (uint) {
        return n * n; // Corrected to square the input
    }
}

contract Practice2 {

    function ArrayTraverser(uint[] memory arr, function(uint) returns(uint) f) internal {
        for(uint i =0; i<arr.length; i++){
            arr[i] = f(arr[i]);
        }
    }

    function check(uint[] memory arr)public returns(uint[] memory){
        ArrayTraverser(arr, even);
        return arr;
    }

    function check2(uint[] memory arr)public returns(uint[] memory){
        ArrayTraverser(arr, prime);
        return arr;
    }
    function even(uint n) internal pure returns(uint y){
        if(n%2 == 0){
            return n;
        }
    }
    function prime(uint a) internal pure returns(uint z){
        if(a%2==1){
            return a;
        }
    }
}
