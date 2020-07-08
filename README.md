# PayableWallet

This is an implimentation of a paywall using Metamask. On subsribing to the website, you will get a "SUB" non fungible token. This token is coded in the standard ERC 721 standard and is therefore non refundable. 

## Instructions

Clone the repository.
Ensure you have node and npm installed.
Install the [Metamask Chrome Extension](https://metamask.io/).
Install web3 using the command: 
`npm install web3 --save`
Install Express to run the server:
`npm install express --save`

Finally, use this command to start on localhost:3300:
`node server.js`

The smart contract is deployed using Remix IDE on the Goerli Test Network. If you are deploying your own contract instance change the following parameters in the index.js file:
`var contractAddress = '0x2f9B0A57C01fb9bd3CF29D4D0e16F5f71aCEDb18'; //Enter your deployed contract address here` 
`var abi = [...] //Enter your abi here`

## Screenshots

![1](https://user-images.githubusercontent.com/51082769/86911976-cf186300-c139-11ea-92f4-17b9174462ce.PNG)

Checks whether or not you have metamask installed.

![2](https://user-images.githubusercontent.com/51082769/86911979-d0e22680-c139-11ea-8210-f076b47d1e84.PNG)

Connects to your account

![3](https://user-images.githubusercontent.com/51082769/86911981-d0e22680-c139-11ea-9ea8-bd28aed0a35f.PNG)

Approving a transaction to the mint function to give the msg.sender a SUB token, with which he can "access" the content on the website at any later time



