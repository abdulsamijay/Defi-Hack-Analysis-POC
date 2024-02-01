# Harvest Finance Hack Analysis & POC 

## Getting Started

This is a POC of Harvest Finance hack that took place on Ethereum at block 11129514, where the hacker walked away with around ~$33M exploiting protocol.

### Pre-requisites

You will need to install foundry to run the exploit. Link for installtion [foundry](https://github.com/foundry-rs/foundry).


- Run the POC, I am assuming you have already cloned & built the repo.
```sh
forge clean

forge test -vv --fork-url <YOUR_API_PROVER> --fork-block-number 11129513 -m harvest
```