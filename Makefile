REPO := dsu-cs-4300-ai
all:

commit-push:
	x=`git status | grep 'nothing to commit' | wc -l`; \
	if [ "$$x" = "0" ]; then \
		EDITOR="emacs -nw -q" git commit -a; \
	fi;
	git push;

update-web:
	git add -A .
	x=`git status | grep 'nothing to commit' | wc -l`; \
	if [ "$$x" = "0" ]; then \
		git commit -m 'automated daily commit'; \
	fi;
	git push;
	ssh cgl@helios "cd courses/$(REPO)/; git pull"

install-on-helios:
	make install-examples

install-examples:
	rm -f web/examples.examples
	ln -s ../../$(EXAMPLE_REPO)/code web/examples.examples




