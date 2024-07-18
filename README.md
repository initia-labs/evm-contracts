# EVM Contracts

This repository extracts only contracts from the [minievm](https://github.com/initia-labs/minievm).

## How to update

```bash
make update
```

## NPM Installation

```bash
npm install @initia/evm-contracts
```

### Usage

```solidity
pragma solidity ^0.8.24;

import {ERC20} from "@initia/evm-contracts/erc20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("my token", "MYT", 6) {
    }
}
```
