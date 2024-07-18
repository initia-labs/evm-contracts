# EVM Contracts

## How to update

```bash
# add minievm as upstream
git remote add upstream https://github.com/initia-labs/minievm

# fetch latest updates
git fetch upstream

# gather updates from upstream
git checkout upstream/main && git subtree split --prefix=x/evm/contracts -b contracts  && git checkout contracts
rm -rf ./**/*.go && git add . && git commit -m 'remove *.go'

# merge the updates on contracts main
git checkout main && git merge contracts && git branch -D contracts
```
