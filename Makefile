.PHONY: run
run:
	@jekyll serve

.PHONY: publish
publish:
	@git config user.name "dygestr" && \
	git config user.email "dygestr@gmail.com" && \
	git add --all && git commit -m "updates" && git push