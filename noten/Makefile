SONG = INeverLovedAMan
SONGS = DestinationAnywhere.pdf InTheMidnightHour.pdf $(SONG).pdf TryALittleTenderness.pdf TheDarkEndOfTheStreet.pdf

#all: $(SONGS)
all: view
v: view
view: $(SONG).pdf
	evince $<
$(SONGS): %.pdf: %.ly
	lilypond $<
c: clean
clean:
	rm -f *.pdf *.midi
e: edit
edit:
	vi $(SONG).ly
l: listen
listen: $(SONG).midi
	timidity -in $<
%.midi: %.ly

.PHONY: all c clean e edit view l listen v view
