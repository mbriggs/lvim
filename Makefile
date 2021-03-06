link:
	mkdir -p ~/.config
	ln -s ~/lvim ~/.config/lvim

dependencies:
	brew install ripgrep
	brew install nnn
	brew install --build-from-source mhanberg/zk/zk
	brew install codespell
	brew install shfmt
	brew install sqlparse
	brew install shellcheck
	brew install stylua
	brew install hadolint
	pip3 install cmakelang
	npm i -g prettier
	npm i -g lua-fmt
	npm i -g eslint_d
	npm install -g @fsouza/prettierd
	npm install -g @unibeautify/beautifier-sqlformat
	npm install -g stylelint
	gem install rubocop rubocop-rails
