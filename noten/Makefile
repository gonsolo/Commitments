#SONG = TryALittleTenderness
SONG = InTheMidnightHour

all: view
view: $(SONG).pdf
	evince $<
$(SONG).pdf $(SONG).midi: $(SONG).ly
	lilypond $<
c: clean
clean:
	rm -f $(SONG).pdf $(SONG).midi
e: edit
edit:
	vi $(SONG).ly
l: listen
listen: $(SONG).midi
	timidity -in $<

.PHONY: all c clean e edit view l listen
