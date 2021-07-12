# Mentorchain | Blockchain application development
Welcome to ``MentorChain``! This is the place where we evolve as blockchain developers for contributing to the decentralized ecosystem.
We have mentioned some of the tasks and references that will help you complete those tasks. These are the basics of blockchain application development and you will be able to complete your project once you have a basic understanding of the tasks mentioned below.
You can fork this repository and start working on the tasks. All you need to do is push your code to the repository. Make sure you have all your files inside a folder that goes by your name. We will aggregate the tasks of every individuals/teams once you complete the tasks.
Any task with the tag ``Program:`` in it needs to be pushed into the github repo.

## Pre-requisities
You need to know about the following before diving into tasks
- Basic understanding of blockchains and its types
- Understanding of cryptography and encryption
- Understanding of smart contracts and dApps
- Nice hands on experience in Javascript development

## Step 1: Introduction to Solidity
While developing applications in blockchains, there are most importantly two parts to be developed. First is the smart contract and second is the application. We will be continuing our series with Ethereum so this roadmap will be heavily based on Ethereum and Javascript. Solidity language is used to write smart contracts in Ethereum whereas Web3.js libraries are used in applications built on ReactJS or NodeJS or any other javascript applications.
Note: We can write smart contracts in Vyper and also find web3 libraries in python and other languages. But for this roadmap we have chosen Solidity and Javascript since they are the widely used languages.

### Tasks
- Deploy a sample contract Ballot.sol from https://remix.ethereum.org in Ropsten testnet
- Understand basics of solidity like variable declarations, mapping, functions, inheritance, libraries and so on
- ``Program:`` Write a smart contract to register, get, update and delete students record(name, roll no and percentage) [Note: Smart contracts aren't used for such cases but this is to sharpen the skill of writing smart contracts]
- ``Program:`` Write a smart contract to distribute an amount of Ether to all the students of the class that you registered earlier. Ether will be deposited in the contract and each student can come and redeem their shares of Ether from the contract.One student can only redeem Ether for once. One smart contract will be valid for a single distribution.

### References
 - https://medium.com/coinmonks/introduction-to-solidity-programming-and-smart-contracts-for-complete-beginners-eb46472058cf
 - https://docs.soliditylang.org/en/v0.8.6/
 - https://www.youtube.com/watch?v=MnSmc7Hto2k&list=PLS5SEs8ZftgUq-aMMYeKf8nPqHrNqa3Iu&index=1
 
## Step 2: Building a simple voting portal
Blockchain techonology key features include transparency and immutablility which makes the blockchain voting system as the perfect application. Implementation of Voting in the Solidity help to understand the Access Control, struct and data structures. 

### Tasks
- Understand Solidity Struct, Maps and Arrays.  
-``Program:`` Write a smart contract to register voters with Voters and Proposal as structs with blocktime to open voting and end it.
-``Program:`` Update smart contracts with all required attributes with different data structures.
-``Program:`` Create function in smart contracts for voting, delegate vote and giving right to vote. 
-``Program:`` Create functions to view winning proposal and winner name after the voting ends.

### References
- https://hackernoon.com/blockchain-for-voting-and-elections-9888f3c8bf72
- https://techpoint.africa/2021/06/12/blockchain-nigeria-elections/
- https://docs.soliditylang.org/en/v0.8.4/solidity-by-example.html#voting 

## Step 3: Introduction to OpenZeppelin
OpenZeppelin is an opensource organization that layouts the common practises and maintain standards for various Ethereum Improvements Proposals. It is a great resource for the Ethereum dApps developers to learn and refer for standard development. It contains the standards for all popular Solidity libraries along with best dApps and their documentations.

### Tasks
- Visit Openzeppline website, forums and github.
- Study and implement Access Control to the Voting Smart Contract.
- Implement Access Control for ROLE 'Chairman' and check role during granting right to vote.
- Deploy and test Access Control implemented Voting Smart Contract in Ropsten Network.
- Study tokens API standards and it's variants. 
- Study token standards source code from Github.

### References
- https://openzeppelin.com/
- https://github.com/OpenZeppelin/openzeppelin-contracts
- https://docs.openzeppelin.com/contracts/4.x/
- https://docs.openzeppelin.com/contracts/4.x/api/access
- https://forum.openzeppelin.com/

## Step 4: Creating your own ERC20 token
ERC20 tokens are essential in blockchain development. They can be used in DEFI(Decentralized Finance), governance, initial offering and so much more. Depending on the need and requirement of any project the token economics or tokenomics can be tweaked to meet these desired changes. 

### Tasks
- Familiarize yourself with the methods found in the following contract.
- Program: Implement the OpenZeppelin ERC20 token and create and deploy your own token (with 15 decimals)in the Ropsten testnet.
- Add the newly deployed token address to your metamask.
- Program: Integrate the token in a loyalty system where users are given some tokens on purchasing some items and the tokens can be redeemed for ether. You can implement giveLoyalityPoints and redeemEther function for the same.

### References
- https://docs.openzeppelin.com/contracts/2.x/api/token/erc20
- https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol
- https://www.toptal.com/ethereum/create-erc20-token-tutorial
- https://ethereum.org/en/developers/tutorials/transfers-and-approval-of-erc-20-tokens-from-a-solidity-smart-contract/

## Step 5 : NFT with IPFS
NFT are the non-fungible tokens which are used to represent any non-fungible asset like certificate, art, land etc. NFTs are quite popular among the blockchain community.
IPFS is a distributed content based file system which uses a specific hash of the document to recognize a file. IPFS is used as off-chain storage in most of the blockchain applications. Pinata and Fleek are some of the IPFS pinning services (like cloud services) that can be used in applications.

### Tasks
- ``Program:`` Create a ERC721 NFT contract for representing certificate of the students
- ``Program:`` Create a web service to store a digital copy of certificate to IPFS
- ``Program:`` Create a contract that can be used by the college to issue the certificates to the students
- ``Program:`` Integrate these services and contracts to build a dApp to issue certificates

### References
- https://blog.infura.io/an-introduction-to-ipfs/
- https://www.freecodecamp.org/news/ipfs-101-understand-by-doing-it-9f5622c4d4ed/
- https://forum.openzeppelin.com/t/create-an-nft-and-deploy-to-a-public-testnet-using-truffle/2961/6
- https://medium.com/pinata/how-to-build-erc-721-nfts-with-ipfs-e76a21d8f914
- https://www.youtube.com/watch?v=ghwwOeNXa9s
- https://docs.openzeppelin.com/contracts/3.x/erc721
- https://docs.ipfs.io/how-to/mint-nfts-with-ipfs/

## Learning Platforms
- https://cryptozombies.io/
- https://www.ludu.co/course/ethereum/
- https://www.youtube.com/channel/UCY0xL8V6NzzFcwzHCgB8orQ
- https://www.youtube.com/channel/UCZM8XQjNOyG2ElPpEUtNasA
