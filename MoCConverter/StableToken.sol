pragma solidity 0.5.8;

import "./ERC20Detailed.sol";
import "./OwnerBurnableToken.sol";

contract StableToken is ERC20Detailed, OwnerBurnableToken {

  string private _name = "RIF Dollar on Chain";
  string private _symbol = "RDOC";
  uint8 private _decimals = 18;

  constructor() Ownable() ERC20Detailed(_name, _symbol, _decimals) public {

  }

  //Fallback
  function() external {
  }
}
