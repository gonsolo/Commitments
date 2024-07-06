\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - Bye Bye Baby (G Dur)
}

TrompetenNoten = {
        \compressEmptyMeasures
        R1*26 | r2 r4 g'' \glissando | g' g, g g  \bar "||"
        c8 r8 r2 r8 b8 | c r r2 r8 bes |
        b r r2 r8 bes | b r g4 bes b |
        c8 r8 r2 r8 b | c r4 c8 r2 |
        des4 des des des | d8 r8 r2. |

        R1*12 | r2 r4 g, \glissando | g' g, g g  \bar "||"
}

SaxNoten = {
        \compressEmptyMeasures
        R1*28 \bar "||"
}

PosaunenNoten = {
        \compressEmptyMeasures
        R1*28 \bar "||"
}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \tempo 4 = 120
                        \relative c'' {
                                \set Staff.instrumentName = \markup { Trompete (B\flat) }
                                \set Staff.midiInstrument = "trumpet"
                                \transposition bes
                                \key a \major
                                \transpose bes c {
                                      \relative {
                                              \TrompetenNoten
                                      }
                                }
                        }
                }

                \new Staff = "altsax" {
                        \set Staff.instrumentName = \markup { Altsaxophon (E\flat) }
                        \set Staff.midiInstrument = "alto sax"
                        \transposition es
                        \key e \major
                        \transpose es c'' {
                                \relative {
                                        \SaxNoten
                                }
                        }
                }

                \new Staff = "posaune" {
                        \set Staff.instrumentName = \markup { Posaune (C) }
                        \set Staff.midiInstrument = "trombone"
                        \key g \major
                        \clef bass
                        \transpose c c {
                                \relative {
                                        \PosaunenNoten
                                }
                        }
                }
        >>

        \midi {}
        \layout {}
}
