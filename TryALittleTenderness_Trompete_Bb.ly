\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - Try a little Tenderness (E Dur)
}

\score {


        \new Staff = "clarinet" {
                \tempo 4 = 100
                \relative c'' {
                        \set Staff.instrumentName = \markup { Trompete (B\flat) }
                        \set Staff.midiInstrument = "trumpet"
                        \transposition bes
                        \key fis \major
                        \transpose bes c {
                              \relative {
                                        b''2\mf gis4 cis4 | b2 gis4 fis4 | e2 e2 | cis1 | b2. r4 \bar "||"
                                        \compressEmptyMeasures
                                        R1*16 \bar "||"
                                        R1*16 \bar "||"
                                        R1*16 \bar "||"
                                        R1*12 \bar "||"
                                        e'1~ | e1 | eis1~ | eis2. r4 |
                                        r8 cis,4 cis8-. r8 dis4 dis8-. | r8 e4 e8-. r8 f4 f8-. |
                                        r8 fis4 fis8-. r8 g4 g8-. | r8 gis4 gis8-. a4-> ais4-> |
                                        \repeat volta 2 {
                                                b1 | a1 | gis1~ | gis2. r4 | 
                                                r8 cis,4 cis8-. r8 dis4 dis8-. | r8 e4 e8-. r8 f4 f8-. |
                                                r8 fis4 fis8-. r8 g4 g8-. | r8 gis4 gis8-. a4-> ais4-> |
                                }
                                      
                              }
                        }
                }
          }

          \midi {}
          \layout {}
}
