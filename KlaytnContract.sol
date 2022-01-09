// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";


contract KlaytnTemplate is ERC721, ERC721Enumerable, Ownable {
    using SafeMath for uint256; // for invocation of mul()

    /**
      * @dev Constants
    */
    uint public constant ASSET_LIMIT = 5;

    /**
      * @dev Variables
    */
    string private _baseURIextended;
    bool internal uriSet;
    uint[ASSET_LIMIT] private indices;

    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("Klaytn Template", "KlaytnTemplate") {}

    /**
      * OWNER ONLY
    */

    function setBaseURI(string memory baseURI_) external onlyOwner() {
        uriSet = true;
        _baseURIextended = baseURI_;
    }

    function giveaway(address receiver, uint256 numAssets) external onlyOwner {
        require(uriSet == true, "Base URI not set, do that first and then giveaway");
        require(totalSupply().add(numAssets) <= ASSET_LIMIT, "There are not enough assets left");

        for (uint i = 0; i < numAssets; i++) {
            uint id;
            id = _tokenIdCounter.current();

            // start edition at #1 vs #0
            if (id == 0) {
                _tokenIdCounter.increment();
                id = _tokenIdCounter.current();
            }

            _safeMint(receiver, id);
            _tokenIdCounter.increment();
        }
    }

    /**
      * OVERRIDES
    */

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    // used by inherited 'function tokenURI'
    function _baseURI() internal view virtual override returns (string memory) {
        return _baseURIextended;
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId)
    internal override(ERC721, ERC721Enumerable) {
        super._beforeTokenTransfer(from, to, tokenId);
    }
}
