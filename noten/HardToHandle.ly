\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - Hard to Handle (G Dur)
}

TrompetenNoten = {
        r1 |
        r1 |
        r2 r8 g16 g b c8 d16~ |
        d2 r8 c16 bes c bes r8 \bar "||"
        g'1~ | g |
        \compressEmptyMeasures
        R1*6 |
        d,4 r8 d16 d fis g r a~ a8 r8 |
        d4 r8 d16 d fis g r a~ a8 r8 |
        R1*2 |
        r8 c,16 c c c c r r d d d d d d r |
        f r f c r c g8~ g2 |

        \repeat volta 2 {
            r2 r4 a16 a r8 |
            g2 r4 a16 a r8 |
            g2 r4 a16 a r8 |
            g2 r4 a16 a r8 |
            g2 r4 a16 a r8 |
            g2 r4 a16 a r8 |
            g2 r4 a16 a r8 |
            g2 r2 |
            d4 r8 d16 d fis g r a~ a8 r8 |
            d4 r8 d16 d fis g r a~ a8 r8 |
            R1*2 |
            r4 r8 g,16 g b c8 d16~ d8 r8 |
            r4 r8 c16 bes c bes g fes g8 r |
            r4 r8 g16 g b c8 g'16~ g8 r8 |
            c,16 r8 bes16 r8 g8 r2 |
        }

        r1 | r1 | r1 | r1 |
        g16 g g g r g g g r g g g r4 |
        g16 g g g r g g g r2 |
        g16 g g g r g g g r g g g r4 |
        g16 g g g r g g g r2 |

        g'16 g g g r g g g r2 |
}

SaxNoten = {
        \compressEmptyMeasures
        R1*8 \bar "||"
        R1*24 \bar "||"
        R1*23 r2 r4 r8 f \bar "||"

        ges8 r8 r2 r8 f |
        ges8 r8 r2 r8 des |
        c8 r8 r2 r8 des |
        c8 r8 r2 r4 |

        ges'8 r8 r2 r8 f |
        ges8 r8 r2 r8 des |
        c8 r8 r2 r8 des |
        c8 r8 r2 r4 \bar "||"

        R1*52 \bar "||"
}

PosaunenNoten = {
        \compressEmptyMeasures
        R1*8 \bar "||"
        R1*24 \bar "||"
        R1*23 r2 r4 r8 d \bar "||"

        es8 r8 r2 r8 d |
        es8 r8 r2 r8 a, |
        as8 r8 r2 r8 a |
        as8 r8 r2 r4 |

        es'8 r8 r2 r8 d |
        es8 r8 r2 r8 a, |
        as8 r8 r2 r8 a |
        as8 r8 r2 r4 \bar "||"

        R1*52 \bar "||"
}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \tempo 4 = 105
                        \relative c'' {
                                \set Staff.instrumentName = \markup { Trompete (B\flat) }
                                \set Staff.midiInstrument = "trumpet"
                                \transposition bes
                                \key a \major
                                \transpose bes c {
                                      \relative g'' {
                                              \TrompetenNoten
                                      }
                                }
                        }
                }

                %\new Staff = "altsax" {
                %        \set Staff.instrumentName = \markup { Altsaxophon (E\flat) }
                %        \set Staff.midiInstrument = "alto sax"
                %        \transposition es
                %        \key c \minor
                %        \transpose es c'' {
                %                \relative {
                %                        \SaxNoten
                %                }
                %        }
                %}

                %\new Staff = "posaune" {
                %        \set Staff.instrumentName = \markup { Posaune (C) }
                %        \set Staff.midiInstrument = "trombone"
                %        \key es \minor
                %        \clef bass
                %        \transpose c c {
                %                \relative {
                %                        \PosaunenNoten
                %                }
                %        }
                %}
        >>

        \midi {}
        \layout {}
}
