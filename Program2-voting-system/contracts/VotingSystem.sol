pragma solidity >=0.4.22 <0.9.0;

contract VotingSystem{
    
    struct Voters{
         bool voted;
        uint id;
        
    }
    struct Proposal{
        uint ProposalId;
        string ProposalName;
        uint votecount;
        
    }
    uint createdtime;
    uint start;
    uint end;
    
    constructor(uint _start, uint _end) public {
      createdtime=block.timestamp;  
      start=block.timestamp+ _start;
      end=block.timestamp+ _end;
        
    }
    
    function vote() public view returns(string memory) {
        require(block.timestamp>=start && block.timestamp<=createdtime+end);
          return 'can vote'; 
        
    }
}