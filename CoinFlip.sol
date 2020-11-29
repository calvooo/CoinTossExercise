pragma solidity 0.5.12;

contract FiftyFifty{
  // Create State Variables
  uint wager;
  uint result;
  string finalmessage;

  uint public balance;

  // Create Method for Heads Bet
  function BetHeads (uint wager) public returns payable (string memory finalmessage){
    now % 2 = result;
    
    // Win
    if (result == 0){
      finalmessage = "The result was heads!";
      // Payout
      msg.sender.transfer(wager * 2);
      return finalmessage;
      balance -= wager * 2;
    }
    
    // Loss
    else{
      finalmessage = "Sorry! The result was tails!";
      return finalmessage;
      balance += msg.value;
    }
  }

  // Create Method for Tails Bet
  function BetTails (uint wager) public returns payable (string memory finalmessage){
    now % 2 = result;
    
    // Win
    if (result != 0){
      finalmessage = "The result was tails!";
      // Payout
      msg.sender.transfer(wager * 2);
      return finalmessage;
      balance -= wager * 2;
    }
    
    // Loss
    else{
      finalmessage = "Sorry! The result was tails!";
      return finalmessage;
      balance += msg.value;
    }
  }
}
