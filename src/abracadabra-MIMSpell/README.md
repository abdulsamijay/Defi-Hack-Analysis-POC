# Abracadabra Money - Hack Analysis & PoC 

## Getting Started

This is a PoC for Abracadabra Money exploit that took place at block 19118659 of the mainnet, where the protocol lost around ~$6.5M due to precision errors, commonly known as rounding errors, causing the manipulation of state variables the held the security intact.

### Pre-requisites

You will need to install foundry to run the exploit. Link for installtion [foundry](https://github.com/foundry-rs/foundry).


- Run the POC, I am assuming you have already cloned & built the repo.

```sh
forge clean

forge test --match-test test_abracadbra -vvv --fork-url https://eth-mainnet.g.alchemy.com/v2/YOUR_KEY_HERE --fork-block-number 19118659
```