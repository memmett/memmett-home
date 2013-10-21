
all: symlink

symlink:
	ln -s $(HOME)/projects/memmett-home/bashrc $(HOME)/.bashrc
	ln -s $(HOME)/projects/memmett-home/bash_profile $(HOME)/.bash_profile
	ln -s $(HOME)/projects/memmett-home/bash_aliases $(HOME)/.bash_aliases
	ln -s $(HOME)/projects/memmett-home/emacs $(HOME)/.emacs
	ln -s $(HOME)/projects/memmett-home/emacs.d $(HOME)/.memmett-emacs.d

.PHONY: symlink