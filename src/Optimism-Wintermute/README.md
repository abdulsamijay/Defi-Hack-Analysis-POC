# Wintermute Multisig Hack Analysis & POC

## Getting Started

This is attack that took place on OPTIMISM network.
This POC continously creates proxy contracts to create wintermute multi-sig that had not been deployed to optimism network & only existed on ethereum. The attacker took advantage of this as the OPTIMISM team gad already sent around 20M OP tokens to this contract which hacker took custody of.

### Pre-requisites

You will need to install foundry to run the exploit. Link for installtion [foundry](https://github.com/foundry-rs/foundry).

- Run the POC, I am assuming you have already cloned & built the repo.

```sh
forge clean

forge test -vvvv --fork-url https://mainnet.optimism.io --fork-block-number 10607735 -m testWintermuteAddress
```
