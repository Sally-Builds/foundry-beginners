## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Initialize Project

```shell
$ forge init project_name
```

### Compile file

```shell
$ forge compile
```

### Deploy

```shell
    $ forge create solFile --rpc-url urlLink --private-key privateKey #first option
    forge create solFile --rpc-url urlLink --interactive #second option
    forge script /path-to-deploy-script --rpc-url urlLink --broadcast --private-key privateKey #script method

    cast wallet import accountName --interactive
    forge script /path-to-deploy-script --rpc-url urlLink --broadcast --account accountName #safest and recommended method

    cast wallet list #list of wallets
```

### Interacting with Smart contract from the cli

```shell
    cast send --account accountName --rpc-url urlLink TO SIG ARG
    $ cast send --account MyWallet --rpc-url http://127.0.0.1:8545 contract-address "store(uint256)" 12
    $ cast call --rpc-rul contract-address "get()"
```

### Deploying on sepolia eth

create an account with alchemy, copy the rpc url, copy sepolia wallet private key from metamask

### Switching between foundry-zksync and vanilla foundry

```shell
    $ foundryup-zksync #switch to foundry-zksync
    $ foundryup #switch to vanilla foundry
```

### Compiling foundry-zksync

```shell
$ forge build --zksync
$ forge create src/solFile:SmartContract --rpc-url urlLink --private-key privateKey --zksync --legacy
```

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
