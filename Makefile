TRY = TryALittleTenderness_Trompete_Bb

all: view
view: $(TRY).pdf
	evince $<
$(TRY).pdf $(TRY).midi: $(TRY).ly
	lilypond $<
c: clean
clean:
	rm -f $(TRY).pdf $(TRY).midi

e: edit
edit:
	vi $(TRY).ly

.PHONY: all c clean e edit view
