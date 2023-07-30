// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    address public  owner;
    string private textContent;

    modifier onlyOwner()
    {
        require (msg.sender == owner, "Caller is not the owner");
        _;
    }

    constructor(string memory _text) {
        owner = msg.sender;
        textContent = _text;
    }

    function setText(string memory _text) onlyOwner public {
        textContent = _text;
    }

    function getText() public view returns (string memory) {
        return textContent;
    }

    function changeOwner(address newOwner) public {
       owner = newOwner;
    }
}
