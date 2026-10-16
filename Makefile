.PHONY: global install-bin lint install-hooks verify

## Install CLI to ~/.local/bin and symlink global skills/agents/rules
global: install-bin
	@./bin/agent-kit global

## Symlink bin/agent-kit into ~/.local/bin/agent-kit
install-bin:
	@mkdir -p $(HOME)/.local/bin
	@chmod +x $(PWD)/bin/agent-kit $(PWD)/bin/validate-kit
	@ln -sfn $(PWD)/bin/agent-kit $(HOME)/.local/bin/agent-kit
	@echo "[OK] Linked agent-kit to $(HOME)/.local/bin/agent-kit"

## Validate all JSON manifests, SKILL.md, rule, and subagent frontmatter
lint:
	@chmod +x ./bin/validate-kit
	@./bin/validate-kit

## Install a git pre-commit hook that runs make lint automatically
install-hooks:
	@if [ -d .git ]; then \
		mkdir -p .git/hooks; \
		printf "#!/usr/bin/env bash\nset -e\n./bin/validate-kit\n" > .git/hooks/pre-commit; \
		chmod +x .git/hooks/pre-commit; \
		echo "[OK] Installed git pre-commit hook (.git/hooks/pre-commit)"; \
	else \
		echo "[!!] Not a git repository yet. Run git init first."; \
	fi

## Verify repository structure, permissions, and frontmatter schema compliance
verify: lint
	@test -x ./bin/agent-kit
	@./bin/agent-kit status .
	@echo "[OK] All agent-kit verification checks passed."
