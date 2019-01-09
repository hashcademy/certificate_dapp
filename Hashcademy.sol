pragma solidity ^0.5.0;

// create contract named Hashcademy

contract Hashcademy {
    string public name;
    uint public level;
    
    event Certificate(
        string name,
        uint level
    );
    
    function setCertificate(string memory _name, uint _level) public {
        name = _name;
        level = _level;
        emit Certificate(_name, _level);
    }
   
    function getCertificate() public view returns (string memory , uint) {
        return (name, level);
    }
}
