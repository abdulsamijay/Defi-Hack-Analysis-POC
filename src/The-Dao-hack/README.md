# The infamous DAOHack {2016} Analysis & POC 

## Getting Started

This is a POC of a hack that took place on Ethereum Block 1718497, where the hacker walked away with around 3.8M in ETH exploiting the TheDAO contract by draing funds. This attack was the first incident for re-entrancy.

### Pre-requisites

You will need to install foundry to run the exploit. Link for installtion [foundry](https://github.com/foundry-rs/foundry).


- Run the POC, I am assuming you have already cloned & built the repo.
```sh
forge clean 

forge test -vv --fork-url <YOUR_API_PROVER> --fork-block-number 1599207 -m testDaoHack
```