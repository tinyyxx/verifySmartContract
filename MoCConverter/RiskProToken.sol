pragma solidity 0.5.8;

import "./ERC20Detailed.sol";
import "./ERC20Pausable.sol";
import "./OwnerBurnableToken.sol";

contract RiskProToken is ERC20Detailed, ERC20Pausable, OwnerBurnableToken {

  string private _name = "RIFPro";
  string private _symbol = "RIFP";
  uint8 private _decimals = 18;

  constructor() Ownable() ERC20Detailed(_name, _symbol, _decimals) public {
  }

  //Fallback
  function() external {
  }
}
