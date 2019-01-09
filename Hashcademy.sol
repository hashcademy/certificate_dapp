pragma solidity ^0.5.0;

// create contract named Hashcademy

contract Hashcademy {
    string public name;
    uint public level;
    address owner;
    
    constructor() public {
        owner = msg.sender;
    }

    event Certificate(
        string name,
        uint level
    );
    
    modifier checkLevel(uint _level){
        require(
            _level <= 3,
            "You input the wrong level."
        );
        _;
    }
    
    modifier onlyOwner {
        require(
            msg.sender == owner,
            "You must be the owner."
        );
        _;
    }
    
    function setCertificate(string memory _name, uint _level) checkLevel(_level) onlyOwner public {
        name = _name;
        level = _level;
        emit Certificate(_name, _level);
    }
   
    function getCertificate() public view returns (string memory , uint) {
        return (name, level);
    }
}
