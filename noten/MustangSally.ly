\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - Mustang Sally (C Moll)
}

TrompetenNoten = {
        \compressEmptyMeasures
        r1 | r1 | r1 | r1 \bar "||"

        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
}

SaxNoten = {
        \compressEmptyMeasures
        r1 | r1 | r1 | r1 \bar "||"

        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
}

PosaunenNoten = {
        \compressEmptyMeasures
        r1 | r1 | r1 | r2 r4 r8 b, \bar "||"

        c r8 r4 r2 |  r2 r4 r8 b |
        c r8 r4 r2 |  r2 r4 r8 b |
        c r8 r4 r2 |  r2 r4 r8 b |
        c r8 r4 r2 |  r2 r4 r8 e, |

        f r8 r4 r2 |  r2 r4 r8 e |
        f r8 r4 r2 |  r4 r8 a r8 bes r8 b |
        c r8 r4 r2 |  r2 r4 r8 b|
        c r8 r4 r2 |  r1 |

        g1~ | g2 g4 ges4 | f4 r4 r2 | r1 \bar "||"

}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \tempo 4 = 112
                        \relative c'' {
                                \set Staff.instrumentName = \markup { Trompete (B\flat) }
                                \set Staff.midiInstrument = "trumpet"
                                \transposition bes
                                \key d \minor
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
                        \key a \minor
                        \transpose es c'' {
                                \relative {
                                        \SaxNoten
                                }
                        }
                }

                \new Staff = "posaune" {
                        \set Staff.instrumentName = \markup { Posaune (C) }
                        \set Staff.midiInstrument = "trombone"
                        \key c \minor
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
