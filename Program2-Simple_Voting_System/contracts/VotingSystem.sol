// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
import "@openzeppelin/contracts/access/AccessControl.sol";

contract VotingSystem is AccessControl{
    
    struct Voters{
         bool voted;
        uint id;
        uint weight;
        
    }
    struct Proposal{
        uint ProposalId;
        string ProposalName;
        uint votecount;
        
    }
    bytes32 public constant CHAIRMAN = keccak256("CHAIRMAN");

  
    mapping(uint=> Proposal) public ProposalsStore;
    mapping(address=>Voters) Voterstore;
    
    uint ProposalId=0;
    uint createdtime;
    uint start;
    uint end;
    
    
    constructor(uint _start, uint _end) {
       _setupRole(CHAIRMAN, msg.sender);
      createdtime=block.timestamp;  
      start=createdtime+ _start;
      end=createdtime+ _end;
      _addProposals("Proposal 1");
      _addProposals("Proposal 2");
      _addProposals("Proposal 3");
        
    }
    function _addProposals(string memory _ProposalName) private {
        ProposalId++;
        ProposalsStore[ProposalId]= Proposal(ProposalId, _ProposalName,0);
        
    }
    function giveRightToVote(address Voteraddress) public onlyRole (CHAIRMAN){
        require(block.timestamp>=start && block.timestamp<=end);
        require(Voterstore[Voteraddress].weight == 0);
        Voterstore[Voteraddress].weight =1;
        
        
    }
    function delegatevote(address to) public{
        require(block.timestamp>=start && block.timestamp<=end);
        require(Voterstore[msg.sender].weight >= 1);
        require(Voterstore[to].weight >= 1);
        Voterstore[to].weight =Voterstore[to].weight+Voterstore[msg.sender].weight;
        Voterstore[msg.sender].weight = 0;
        
    }
    
    function vote(uint _proposalId) public {
        require(block.timestamp>=start && block.timestamp<=end);
        require(Voterstore[msg.sender].voted == false);
        require(_proposalId<=ProposalId);
        ProposalsStore[_proposalId].votecount = ProposalsStore[_proposalId].votecount+ Voterstore[msg.sender].weight;
        Voterstore[msg.sender].voted=true;
        
        
    }
    function winningProposal() view public returns(uint winningproposalid){
        require(block.timestamp>=end);
        uint winningProposalvote;
        
        for(uint i=1;i<=ProposalId;i++)
        {
            if(ProposalsStore[i].votecount>winningProposalvote)
            {
                winningProposalvote= ProposalsStore[i].votecount;
                winningproposalid =i;
            }
            
        }
        
        
    }
    function winner() view public returns(string memory winnername){
        require(block.timestamp>=end);
        uint winnerid= winningProposal();
        winnername = ProposalsStore[winnerid].ProposalName;
    }
}
