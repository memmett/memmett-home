
all: symlink

symlink:
	ln -s $(HOME)/projects/memmett-home/bashrc $(HOME)/.bashrc
	ln -s $(HOME)/projects/memmett-home/bash_profile $(HOME)/.bash_profile
	ln -s $(HOME)/projects/memmett-home/bash_aliases $(HOME)/.bash_aliases

.PHONY: symlink