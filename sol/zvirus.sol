pragma solidity ^0.5.0;

import "./TradeableERC721Token.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

/**
 * @title Zvirus
 * Zvirus - a contract for my non-fungible zeemz-viruses.
 */
contract Zvirus is TradeableERC721Token {
  constructor(address _proxyRegistryAddress) TradeableERC721Token("Zvirus", "ZVRS", _proxyRegistryAddress) public {  }

  function baseTokenURI() public view returns (string memory) {
    return "https://opensea-creatures-api.herokuapp.com/api/creature/";
  }
}

/* NOTE: Need to replace the address above with the virus image location */
