# Simple Klaytn Smart Contract for Artists

1. create art
2. upload folder of art to Pinata (folder should contain 1.png, 2.png, etc) and name it "{{ collection_name }} project images"
3. copy image folder CID from Pinata, then create metadata files and add this CID to the "image" > REPLACE_ME field
4. put all created files (e.g. 1, 2, 3 - no file extensions) inside a folder called "metadata" and upload this folder to Pinata, named "{{ collection_name }} project metadata"
5. copy/paste smart contract code
6. visit Klaytn IDE > File explorers tab. click the 'document' icon above 'contracts' folder and name the project {{ ProjectName }} (no spaces). next, set variables (project title, token symbol name, ASSET_LIMIT to # of pieces)
7. navigate to Klaytn IDE > 'Compilers' and set config in sidebar (compiler version - 0.8.2, language, evm version - cypress, choose your contract from bottom of "Contract" dropdown)
8. click to compile (await green check on left bar)
9. navigate to Klaytn IDE's > 'Deploy' and choose Environment (Baobab to test), click '+' to import Account
10. (show how to set up or get Kaikas wallet + export private key)
11. IF you chose the Baobab test environment, you can get 5 free KLAY from the Klay faucet (https://baobab.wallet.klaytn.com/)
12. select Contract from "Contract" dropdown, then click Deploy (look at bottom, "creation of {contract name} pending...")
13. click carrot icon on left side of 'Deployed Contracts' section in bottom left of screen
14. copy this link (https://gateway.pinata.cloud/ipfs/CID_HERE/), then replace "CID_HERE" with the json metadata ID from step 4. paste this into the "setBaseURI" box on the bottom left of your Klaytn IDE. then click the orange "setBaseURI" button to execute.
15. Copy the Kaikas wallet address that you want to own all the assets + the NFT collection. this could be the same wallet you deployed with, or another wallet address. next, click the down arrow next to the "giveaway" button, then input your wallet ID + the total number of assets.
16. visit the collection on opensea (testnet if you chose Baobab environment in step 9) by searching for the collection name, or trying your collection name with "-" instead of spaces (Ooju Klaytn Club => ooju-klaytn-club)

example made with this guide:
https://baobab.scope.klaytn.com/nft/0xb914622459afe516fad7e9a1c280049f0addd8ed?tabId=nftTransfer
https://testnets.opensea.io/collection/ooju-colors

wallet/creator:
0x6602100da822774d732694D1a81DbFAC3ea51044 ("Smart Contract Owner")
