\version "2.24.4"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - Too many Fish in the Sea (C Dur)
}

TrompetenNoten =
\relative c''' {
	\partial 4 r4 | r8 g'4. f4-. es-. | c4-. r4 r2 |
	r1 | r1 | r1 | r1 | r1 |
	<g' b,>4->-. <g b,>->-. <g b,>->-. <g b,>->-. | <g b,>->-. r r r8 b,,( \bar "||"

	c2) r2 | r2 r4 r8 b(
	c2) r2 | r2 r4 r8 b(
	c2) r2 | r2 r4 r8 b(
	c2) r2 | r8 c'4. d4-. e-. |

	f-. r4 r2 | r1 |
	r1 | r1 | r1 | r1
	<g b,>4->-. <g b,>->-. <g b,>->-. <g b,>->-. | <g b,>->-. r r r8 b,,( \bar "||"
	c2) r2 | r2 r4 r8 b(
	c2) r2 | 
	r1 | r1 | r1 | r1

	r8 g''4. f4-. es-. | c1( | c2.) r8 b,( |
	c2) r2 | r2 r4 r8 b(
	c2) r2 | r2 r4 r8 b(
	c2) r2 | r8 c'4. d4-. e-. |

	f-. r4 r2 | r1 |
	r1 | r1 | r1 | r1

	<g b,>4->-. <g b,>->-. <g b,>->-. <g b,>->-. | <g b,>->-. r r r8 b,,( \bar "||"
	c2) r2 | r2 r4 r8 b(
	c2) r2 | 
	r1 | r1 | r1 | r1

	r8 g''4. f4-. es-. | c1( | c2.) r8 b,( |

	c2) r2 | r2 r4 r8 b(
	c2) r2 | r2 r4 r8 b(
	c2) r2 | r2 r4 r8 b(
	c2) r2 | r8 c'4. d4-. e-. |

	f-. r4 r2 | r1 |
	r1 | r1 | r1 | r1

	<g b,>4->-. <g b,>->-. <g b,>->-. <g b,>->-. | <g b,>->-. r r r8 b,,( \bar "||"
	c2) r2 | r2 r4 r8 b(
	c2) r2 | 
	r1 | r1 | r1 | r1

	r8 g''4. f4-. es-. | c1( | c2.) r8 b,( |

	\repeat volta 2 {
		c2) r2 | r2 r4 r8 b(
		c2) r2 | r2 r4 r8 b(
		c2) r2 | r2 r4 r8 b(
		c2) r2 | r2 r4 r8 b
	}

}

SaxNoten =
\relative {
        f2.~ f8 d8~ | d1 | c2.~ c8 bes8~ | bes1 |
        \compressEmptyMeasures
        R1*12 \bar "||"

        f'1 | es | f | es |

        r1 | r2 as8 g bes, bes~ | bes1 | r1 | r1  \bar "||"

        es1~ | es4 r4 as8 g bes, bes~ | bes1 | r1 |
        es1~ | es4 r4 as8 g bes, bes~ | bes1 | r1 |
        f'1 | es | f | es |
        r1 | r2 as8 g bes, bes~ | bes1 | r1 | r1  \bar "||"

        bes'2 as8 as4 g8~ | g2 as8 as4 bes8~ | bes4 as8 f8 as4 f8 es |
        f2 as8 as4  bes8~ | bes2 as8 as4 g8~ | g2 \tuplet 3/2 {as4 des, des} |
        es1 | r2 as8 g as g |
        \repeat volta 2 {
                es1 | r2 as8 g as g | bes1 | r2 as8 g as g |
        }
        es1
}

PosaunenNoten =
\relative {
        des2.~ des8 bes8~ | bes1 | as2.~ as8 ges8~ | ges1 |

        \compressEmptyMeasures

	r2 r4 des'8 es |
	es r8 r2 des8 es |
	es r8 r2 des8 es |
	es r8 r2 des8 es |
	es r8 r2 des8 es |
	es r8 r2 des8 es |
	es r8 r2 des8 es |
	es r8 r2 des8 es |
	es r8 r2 des8 es |
	es r8 r2 des8 es |
	es r8 r2 des8 es |
	es r8 r4 r2 |

	\bar "||"

        bes1 | as | bes | as |

        r1 | r2 as'8 g bes, bes~ | bes1 | r1 | r1  \bar "||"

        es1~ | es4 r4 as8 g bes, bes~ | bes1 | r1 |
        es1~ | es4 r4 as8 g bes, bes~ | bes1 | r1 |

        bes1 | as | bes | as |

        r1 | r2 as'8 g bes, bes~ | bes1 | r1 | r1  \bar "||"

        bes'2 as8 as4 g8~ | g2 as8 as4 bes8~ | bes4 as8 f8 as4 f8 es |
        f2 as8 as4  bes8~ | bes2 as8 as4 g8~ | g2 \tuplet 3/2 {as4 des, des} |
        es1 | r2 r4 r8 des |
        \repeat volta 2 {
		es8 r8 f2 r8 des8 |
		es8 r8 f2 r8 des8 |
		es8 r8 f2 r8 des8 |
		es8 r8 f2 r8 des8 |
        }
        es1
}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \tempo 4 = 120
                        %\relative c''' {
                                \set Staff.instrumentName = \markup { Trompete (B\flat) }
                                \set Staff.midiInstrument = "trumpet"
                                \transposition bes
                                \key d \major
                                \transpose bes c {
					\TrompetenNoten
                                }
                        %}
                }

                %\new Staff = "altsax" {
                %        \set Staff.instrumentName = \markup { Altsaxophon (E\flat) }
                %        \set Staff.midiInstrument = "alto sax"
                %        \transposition es
                %        \key c \major
                %        \transpose es c'' {
                %                \SaxNoten
                %        }
                %}

                %\new Staff = "posaune" {
                %        \set Staff.instrumentName = \markup { Posaune (C) }
                %        \set Staff.midiInstrument = "trombone"
                %        \key es \major
                %        \clef bass
                %        \transpose c c {
                %                \PosaunenNoten
                %        }
                %}
        >>

          \midi {}
          \layout {}
}
