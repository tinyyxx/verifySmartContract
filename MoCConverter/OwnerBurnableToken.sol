pragma solidity 0.5.8;

import "./ERC20Mintable.sol";
import "./Ownable.sol";

/**
 * @title Owner Burnable Token
 * @dev Token that allows the owner to irreversibly burned (destroyed) any token.
 */
contract OwnerBurnableToken is Ownable, ERC20Mintable {
  /**
   * @dev Burns a specific amount of tokens for the address.
   * @param who who's tokens are gona be burned
   * @param value The amount of token to be burned.
   */
  function burn(address who, uint256 value) public onlyOwner {
    _burn(who, value);
  }
}
