# StudentManagementSystem
The Student Management System is a Solidity smart contract for Ethereum that registers and manages student information. It allows for adding new students, excluding existing ones, and updating student names. The contract utilizes a mapping and maintains a student count variable to track registered students.

## Description
The StudentManagementSystem contract is a Solidity smart contract designed to manage student information on the Ethereum blockchain. It allows for the registration of students, exclusion of registered students, and updating of student names. The contract maintains a mapping of students where each student is represented by a unique ID and has properties such as their UID, name, and registration status. The contract ensures that a student is not already registered before allowing registration and checks for non-empty names during updates. This contract provides a reliable and transparent way to manage student data within a decentralized environment.

## Getting Started
* Register Student:
The registerStudent function enables the registration of a new student by supplying their UID and name. It verifies that the student is not already registered using a require statement. Additionally, it ensures that the provided name is not empty with an assert statement. Upon successful validation, the student's information is stored in the mapping, and the student count is incremented.

* Exclude Student:
The excludeStudent function allows for the removal of a registered student based on their UID. It confirms the student's current registration status using a require statement. The student's registration status is then changed to false, indicating exclusion, and the student count is decreased.

* Update Student Name:
The updateStudentName function permits the modification of a student's name. It takes the student's UID and the new name as inputs. If the provided name is empty, the transaction is reverted using the revert statement, accompanied by a customized error message. Otherwise, the student's name is updated in the mapping.

These functionalities collectively facilitate the management of student information within the StudentManagementSystem contract while incorporating appropriate checks and safeguards.

## License
This project is licensed under the MIT License - see the LICENSE.txt file for details
