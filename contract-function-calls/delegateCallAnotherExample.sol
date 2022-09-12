// SPDX-License-Identifier:MIT
pragma solidity 0.8.9;

contract A{
   string public firstName;
   string public middleName;
   string public lastName;
 
    
    function setName(string memory _firstName, string memory _middleName, string memory _lastName)public {
        firstName = _firstName;
        middleName = _middleName;
        lastName = _lastName;
    }
}

contract B{
    string public firstName;
    string public middleName;
    string public lastName;

    function setVars(address _addr, string memory _firstName, string memory _middleName, string memory _lastName) public {
        (bool success, bytes memory result) = _addr.delegatecall(abi.encodeWithSignature("setName(string,string,string)", _firstName, _middleName, _lastName));
    }
}