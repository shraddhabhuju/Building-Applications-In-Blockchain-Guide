pragma solidity >=0.4.22 <0.9.0;

contract StudentRecords {
    uint StudentId =0;
    
    
    struct Student {
        uint id;
        string name;
        uint rollNo;
        uint percentage;
        
        
    }
    // event AddStudent(string name, uint rollNo, uint percentage);
    // event EditStudent(uint id, string  name, uint rollno, uint percentage);

    mapping(uint => address) studentToAddress;
    mapping(address => Student) students;
    mapping(address => uint) count;
    

    
    function registerStudent(string memory _name, uint _rollno, uint _percentage) public {
        require(count[msg.sender]==0);
        count[msg.sender]++;
        students[msg.sender] = Student(StudentId, _name, _rollno, _percentage);
        studentToAddress[StudentId]= msg.sender;
        // emit AddStudent(_name, _rollno, _percentage);
        StudentId++;
    
        
    }
    
    function getstudents() view public returns(uint,string memory,uint,uint ){
    
            
           return(students[msg.sender].id,students[msg.sender].name, students[msg.sender].rollNo, students[msg.sender].percentage);
        
        
    }
    
    function updateStudent(uint _id, string memory _name, uint _rollno, uint _percentage) public{
        
        
        
        require(studentToAddress[_id] == msg.sender);
        require(students[msg.sender].id==_id);
        
        students[msg.sender].name = _name;
        students[msg.sender].rollNo= _rollno;
        students[msg.sender].percentage=_percentage;
        // emit EditStudent(_id, _name, _rollno, _percentage);
    }
    
    function deleteStudent() public{
    
    
    delete students[msg.sender];
    
   
    
}
}

// pragma solidity >= 0.5.0 <0.6.0;

// contract StudentRecords {
//     uint StudentId =0;
    
    
//     struct Student {
//         uint id;
//         string name;
//         uint rollNo;
//         uint percentage;
        
        
//     }
 
//     mapping(uint => Student) public students;
    
    
//     function registerStudent(string memory _name, uint _rollno, uint _percentage) public {
//         students[StudentId] = Student(StudentId, _name, _rollno, _percentage);
        
//         StudentId++;
        
    
        
//     }
    
//     function updateStudent(uint _id, string memory _name, uint _rollno, uint _percentage) public{
        
        
     
//         students[_id].name = _name;
//         students[_id].rollNo= _rollno;
//         students[_id].percentage=_percentage;
//     }
    
//     function deleteStudent(uint _id) public{
    
 
//     delete students[_id];
// }
// }