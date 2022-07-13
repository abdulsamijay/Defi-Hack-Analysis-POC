# XCarnival NFT Lending Hack Analysis & POC 

## Getting Started

This is a POC of a hack that took place on Ethereum Block 15028861, where the hacker walked away with around $3.8M in ETH exploiting the XCarnival NFT Lending protocol.

### Pre-requisites

You will need to install foundry to run the exploit. Link for installtion [foundry](https://github.com/foundry-rs/foundry).


- Run the POC, I am assuming you have already cloned & built the repo.
```sh
forge clean 

forge test -vv --fork-url <YOUR_API_PROVER> --fork-block-number 15028860 -m pickle
```