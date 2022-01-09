# Simple Klaytn Smart Contract for Artists

1. create art
2. upload folder of art to Pinata (folder should contain 1.png, 2.png, etc)
3. create metadata files + add art folder CID to each metadata's "image" field
4. upload metadata (folder of 1, 2, 3) - no file extensions
5. copy/paste contract into IDE > File explorers and set variable (project title, token symbol name, ASSET_LIMIT to # of pieces)
6. visit IDE > 'Compilers' and set config in sidebar (compiler version, language, evm version - cypress, choose contract from Dropdown)
7. click to compile (await green check on left bar)
8. visit IDE > 'Deploy' and choose Environment, import Account, select Contract from dropdown, click Deploy (look at bottom, "creation of {contract name} pending...")
9. click to open 'Deployed Contracts' section at bottom of left sidebar
10. set base URI (https://gateway.pinata.cloud/ipfs/CID_HERE/) - where "CID_HERE" is the json metadata ID (step 4)
11. giveaway all assets (ASSET_LIMIT number) to yourself, any wallet is OK (must click to 'open' function so you can input 2 arguments! - wallet + qty)


example made with this guide:
https://baobab.scope.klaytn.com/nft/0xb914622459afe516fad7e9a1c280049f0addd8ed?tabId=nftTransfer
https://testnets.opensea.io/collection/ooju-colors

wallet/creator:
0x6602100da822774d732694D1a81DbFAC3ea51044 ("Smart Contract Owner")
