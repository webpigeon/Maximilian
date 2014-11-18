CC=g++
CCFLAGS?=-Wall
LIBS?=-lasound -lpthread
SOUNDLIB?=-D__LINUX_ALSA__

.PHONY: all
all: maximillion

.PHONY: clean
clean:
	rm -f *.o maximillian

maximillion:
	$(CC) $(CCFLAGS) $(SOUNDLIB) -o maximilian main.cpp RtAudio.cpp player.cpp maximilian.cpp $(LIBS)
