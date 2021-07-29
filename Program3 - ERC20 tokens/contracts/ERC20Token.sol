// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is  ERC20{
    address minter;
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol){
        minter=msg.sender;
      _mint(msg.sender, 1000*(10** uint256(decimals())));
        
    }
    
 
    
  function Purchase() public{
      
      _giveLoyalityPoints(msg.sender);
  }
  
 function _giveLoyalityPoints(address _owner) private{
     _transfer(minter,_owner, 10*(10** uint256(decimals())));
     
 }
 function redeemether() public {
     require(balanceOf(msg.sender)>=(10*(10** uint256(decimals()))));
     _burn( msg.sender,10*(10** uint256(decimals())));
     address payable redeemer = payable(msg.sender);
     redeemer.transfer(1 ether);
 }
   function depositether() external payable{
        
        
    }

}