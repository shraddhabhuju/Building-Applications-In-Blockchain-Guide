pragma solidity >=0.4.22 <0.9.0;

contract VotingSystem{
    
    struct Voters{
        bool voted;
        
    }
    struct Proposal{
        uint ProposalId;
        string ProposalName;
        uint votecount;
        
    }
    uint createdtime;
    
    constructor() public {
      createdtime=block.timestamp;  
        
    }
    
    function vote() public view returns(string memory) {
        require(block.timestamp<=createdtime+20);
          return 'can vote';  
        
        
    }
}