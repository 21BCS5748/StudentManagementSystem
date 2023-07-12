// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract StudentManagementSystem {
    struct student {
        uint uid;
        string name;
        bool registered;
    }

    mapping(uint => student) public students;
    uint public studentCount;

    function registerstudent(uint _uid, string memory _name) public {
        require(!students[_uid].registered, "Student is already registered");     // require statement
        
        assert(bytes(_name).length > 0);                          // assert statement
        
        students[_uid] = student(_uid, _name, true);
        studentCount++;
    }

    function excludestudent(uint _uid) public {
        require(students[_uid].registered, "Student is not registered");
        
        students[_uid].registered = false;
        studentCount--;
    }
    
    function updateStudentName(uint _uid, string memory _name) public {
        if (bytes(_name).length == 0) {                             //revert statement
            revert("Name cannot be empty");
        }
        
        students[_uid].name = _name;
    }
}