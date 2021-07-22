pragma solidity >=0.4.22 <0.9.0;

contract StudentRecords {
    uint StudentId =0;
    
    
    struct Student {
        uint id;
        string name;
        uint rollNo;
        uint percentage;
        bool redeemed;
        
        
    }
    // event AddStudent(string name, uint rollNo, uint percentage);
    // event EditStudent(uint id, string  name, uint rollno, uint percentage);

    mapping(uint => address) studentToAddress;
    mapping(address => Student) students;
    mapping(address => uint) registration;
   
   

    // Payable constructor can receive Ether
    
    function redeemEther() public {
        // address payable studentaddress =payable(msg.sender);
        if(_checkforrecord())
        {
        require(students[msg.sender].redeemed == false);
        msg.sender.transfer(1 ether);
        students[msg.sender].redeemed = true;
        }
        
        else{
            revert('You are not registered');
            
        }
        
    }
     function balanceof() external view returns(uint) {
        
        return address(this).balance;
    }
    
    function depositether() external payable{
        
        
    }

    
    function registerStudent(string memory _name, uint _rollno, uint _percentage) public {
        require(registration[msg.sender]==0);
        registration[msg.sender]++;
        students[msg.sender] = Student(StudentId, _name, _rollno, _percentage,false);
        studentToAddress[StudentId]= msg.sender;
        // emit AddStudent(_name, _rollno, _percentage);
        StudentId++;
    
        
    }
    
    function getstudents() view public returns(uint,string memory,uint,uint,bool ){
    
            
           return(students[msg.sender].id,students[msg.sender].name, students[msg.sender].rollNo, students[msg.sender].percentage, students[msg.sender].redeemed);
        
        
    }
    
    function updateStudent(uint _id, string memory _name, uint _rollno, uint _percentage) public{
        
        if(_checkforrecord())
        {
             require(studentToAddress[_id] == msg.sender);
        require(students[msg.sender].id==_id);
        
        students[msg.sender].name = _name;
        students[msg.sender].rollNo= _rollno;
        students[msg.sender].percentage=_percentage;
        // emit EditStudent(_id, _name, _rollno, _percentage);
        } else{
            revert('You arenot registered');
        }
        
       
    }
    
    function deleteStudent() public{
    
    
    delete students[msg.sender];
    
   
    
}
function _checkforrecord() private view returns(bool) {
    for(uint i=0;i<=StudentId;i++)
    {
        if(studentToAddress[i]==msg.sender){
            return true;
        }
    }
    return false;
}
}