# Simple Klaytn Smart Contract for Artists

1. create art
2. upload folder of art to Pinata (folder should contain 1.png, 2.png, etc) and name it "{{ collection_name }} project images"
3. copy image folder CID from Pinata, then create metadata files and add this CID to the "image" > REPLACE_ME field
4. put all created files (e.g. 1, 2, 3 - no file extensions) inside a folder called "metadata" and upload this folder to Pinata, named "{{ collection_name }} project metadata"
5. copy/paste smart contract code
6. visit Klaytn IDE > File explorers tab. click the 'document' icon above 'contracts' folder and name the project {{ ProjectName }} (no spaces). next, set variables (project title, token symbol name, ASSET_LIMIT to # of pieces)
7. visit IDE > 'Compilers' and set config in sidebar (compiler version - 0.8.2, language, evm version - cypress, choose your contract from bottom of "Contract" dropdown)
8. click to compile (await green check on left bar)
9. visit IDE > 'Deploy' and choose Environment, import Account, select Contract from dropdown, click Deploy (look at bottom, "creation of {contract name} pending...")
10. click to open 'Deployed Contracts' section at bottom of left sidebar
11. set base URI (https://gateway.pinata.cloud/ipfs/CID_HERE/) - where "CID_HERE" is the json metadata ID (step 4)
12. giveaway all assets (ASSET_LIMIT number) to yourself, any wallet is OK (must click to 'open' function so you can input 2 arguments! - wallet + qty)


example made with this guide:
https://baobab.scope.klaytn.com/nft/0xb914622459afe516fad7e9a1c280049f0addd8ed?tabId=nftTransfer
https://testnets.opensea.io/collection/ooju-colors

wallet/creator:
0x6602100da822774d732694D1a81DbFAC3ea51044 ("Smart Contract Owner")
