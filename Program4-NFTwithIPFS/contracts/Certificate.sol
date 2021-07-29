pragma solidity >=0.4.22 <0.9.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "contracts/StudentRecords.sol";

contract Certificate is ERC721,StudentRecords {

constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol){
    
}
uint tokenId;

function createCertificate() public {
require(_checkforrecord()==true);
require(students[msg.sender].certificatetoken == false,"Certificate already provided");
_mint(msg.sender, tokenId);
students[msg.sender].certificatetoken = true;
tokenId++;
}

}