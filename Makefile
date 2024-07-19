.PONY: update

update:
	@echo "fetch latest updates"
	git fetch upstream

	@echo "gather updates from upstream"
	git checkout upstream/main && git subtree split --prefix=x/evm/contracts -b contracts  && git checkout contracts
	rm -rf ./**/*.go && git add . && git commit -m 'remove *.go'

	@echo "merge the updates on contracts main"
	git checkout main && git merge contracts --squash && git branch -D contracts && git commit -m 'pull updates'
