build: src/generate.sh
	./src/generate.sh

dist: src/package.sh build
	./src/package.sh

clean:
	rm -rf build dist

all: clean dist

