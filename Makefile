audio: src/audio.sh
	./src/audio.sh

video: src/video.sh
	./src/video.sh

text: src/text.sh
	./src/text.sh

build: audio video text

dist: src/package.sh build
	./src/package.sh

clean:
	rm -rf build dist

all: clean dist

