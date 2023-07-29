// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    address private owner;
    string public textContent;

    modifier onlyOwner() {
        owner = msg.sender;
        _;
    }

    constructor(string memory _text) {
        owner = msg.sender;
        textContent = _text;
    }

    function setText(string memory _text) public {
        textContent = _text;
    }

    function getText() public view returns (string memory) {
        return textContent;
    }
}
