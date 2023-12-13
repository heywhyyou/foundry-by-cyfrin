// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
contract FundMe {

  uint256 minimumUsd = 5;

  function fund() public payable {
    require(msg.value >= minimumUsd, "didn't send enough eth");
    
  }
//   function withdraw() public {}x

  function getPrice() public view returns(uint256) {
    // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306- BTC
    // ABI: check
    AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    (, int256 price, , , ) = priceFeed.latestRoundData();
    // Price of ETH in terms of USD
    // 2000(.)00000000 - 8 decimals
    return uint256(price) * 1e10;
  }
  
  function getConversionRate() public {
    
  }

  function getVersion() public view returns (uint256) {
    return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
  }
}