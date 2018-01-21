pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Wowee is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Wowee(address _owner)  UpgradeableToken(_owner) {
    name = "Wowee";
    symbol = "WOW";
    totalSupply = 10000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}