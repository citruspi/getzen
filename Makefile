COMMIT:=$(shell git log -1 --pretty=format:'%H')
BRANCH:=$(TRAVIS_BRANCH)

ifeq ($(strip $(BRANCH)),)
	BRANCH:=$(shell git branch | sed -n -e 's/^\* \(.*\)/\1/p')
endif

all: dist

clean:

	rm -rf dist

dist: clean

	mkdir dist
	cp -r src/* dist

.PHONY: clean
