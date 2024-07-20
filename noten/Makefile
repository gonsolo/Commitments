MAKEFLAGS += -j8

SONG = InTheMidnightHour
SONGS = ByeByeBaby.pdf DestinationAnywhere.pdf INeverLovedAMan.pdf InTheMidnightHour.pdf MustangSally.pdf ThatsTheWayLoveIs.pdf TryALittleTenderness.pdf TheDarkEndOfTheStreet.pdf
ALL = Commitments.pdf

all: view
#all: $(ALL)
#$(ALL): $(SONGS)
#	pdfunite $^ $@
#all: $(SONGS)

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
