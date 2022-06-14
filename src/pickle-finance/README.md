# Pickle Finance Hack Analysis & POC 

## Getting Started

This is a POC of a hack that took place on Ethereum Block 11303123, where the hacker walked away with around $19M in DAI exploiting Pickle Finance protocol.

### Pre-requisites

You will need to install foundry to run the exploit. Link for installtion [foundry](https://github.com/foundry-rs/foundry).


- Run the POC, I am assuming you have already cloned & built the repo.
```sh
forge clean 

forge test -vv --fork-url <YOUR_API_PROVER> --fork-block-number 11303122 -m pickle
```

### Acknowledgements
This POC was made possible & inspired by the whitehats that were present in the war room when the hack took place.

- [`Benteg`](https://github.com/banteg/evil-jar) for his awesome detailed explanation.
- [`Samczsun`](https://github.com/banteg/evil-jar/blob/master/reference/samczsun.sol) for his version of POC in solidity.