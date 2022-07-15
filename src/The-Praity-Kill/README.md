# The infamous 'Accidently killed it' Analysis & POC 

## Getting Started
A person was experimenting with the newly deployed wallet for parity. And this person accidently killed it be becomming the owner & calling self-destruct on the contract.  

### Pre-requisites

You will need to install foundry to run the exploit. Link for installtion [foundry](https://github.com/foundry-rs/foundry).


- Run the POC, I am assuming you have already cloned & built the repo.
```sh
forge clean 

forge test -vv --fork-url <YOUR_API_PROVER> --fork-block-number 4501735 -m testKillParity
```