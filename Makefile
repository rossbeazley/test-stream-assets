audio: src/audio.sh
	./src/audio.sh

video: src/video.sh
	./src/video.sh

build: audio video

dist: src/package.sh build
	./src/package.sh

clean:
	rm -rf build dist

all: clean dist

