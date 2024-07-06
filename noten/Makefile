SONG = TheDarkEndOfTheStreet
SONGS = InTheMidnightHour.pdf TheDarkEndOfTheStreet.pdf TryALittleTenderness.pdf

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

.PHONY: all c clean e edit view l listen v view
