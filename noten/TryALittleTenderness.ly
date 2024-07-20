\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - Try a little Tenderness (E Dur)
}

TrompetenNoten = 
\relative b'' {
          b2\mf gis4 cis4 | b2 gis4 fis4 | e2 e2 | cis1 | b2. r4 \bar "||"
          \compressEmptyMeasures
          R1*16 \bar "||"
          R1*16 \bar "||"
          R1*16 \bar "||"
          R1*12 \bar "||"
          e'1~ | e1 | eis1~ | eis2. r4 |
          cis,8 cis4 cis8-. dis8 dis4 dis8-. | e8 e4 e8-. f8 f4 f8-. |
          fis8 fis4 fis8-. g8 g4 g8-. | gis8 gis4 gis8-. a4-> ais4-> |
          \repeat volta 2 {
                  b1 | a1 | gis1~ | gis2. r4 | 
                  cis,8 cis4 cis8-. dis8 dis4 dis8-. | e8 e4 e8-. f8 f4 f8-. |
                  fis8 fis4 fis8-. g8 g4 g8-. | gis8 gis4 gis8-. a4-> ais4-> |
          }
          b1 |
}

SaxNoten =
\relative {
        b4 a gis fis | e fis e c | cis dis cis b | ais1 | dis2. r4 \bar "||"
        \compressEmptyMeasures
        R1*16 \bar "||"
        R1*16 \bar "||"
        R1*16 \bar "||"
        R1*12 \bar "||"
        gis1~ | gis1 | b1~ | b2. r4 |
        a,8 a4 a8-. b8 b4 b8-. | cis8 cis4 cis8-. d8 d4 d8-. |
        dis8 dis4 dis8-. e8 e4 e8-. | f8 f4 f8-. fis4-> g4-> |
        \repeat volta 2 {
                gis1 | fis1 | f1~ | f2. r4 |
                a,8 a4 a8-. b8 b4 b8-. | cis8 cis4 cis8-. d8 d4 d8-. |
                dis8 dis4 dis8-. e8 e4 e8-. | f8 f4 f8-. fis4-> g4-> |
        }
        gis1 |
}

PosaunenNoten =
\relative {
        r1 | r2 r4 g | a g a g | fis1 | fis2. r4 |

        \bar "||"

        \compressEmptyMeasures
        R1*16 \bar "||"
        R1*16 \bar "||"
        R1*16 \bar "||"
        R1*12 \bar "||"
        e1~ | e1 | cis1~ | cis2. r4 |
        a8 a4 a8-. b8 b4 b8-. | cis8 cis4 cis8-. d8 d4 d8-. |
        dis8 dis4 dis8-. e8 e4 e8-. | f8 f4 f8-. fis4-> g4-> |
        \repeat volta 2 {
                e1 | d1 | cis1~ | cis2. r4 |
                a8 a4 a8-. b8 b4 b8-. | cis8 cis4 cis8-. d8 d4 d8-. |
                dis8 dis4 dis8-. e8 e4 e8-. | f8 f4 f8-. fis4-> g4-> |
        }
        e1 |
}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \tempo 4 = 98
                                \set Staff.instrumentName = \markup { Trompete (B\flat) }
                                \set Staff.midiInstrument = "trumpet"
                                \transposition bes
                                \key fis \major
                                \transpose bes c {
                                        \TrompetenNoten

                                }
                }

                \new Staff = "altsax" {
                        \set Staff.instrumentName = \markup { Altsaxophon (E\flat) }
                        \set Staff.midiInstrument = "alto sax"
                        \transposition es
                        \key cis \major
                        \transpose es c'' {
                                \relative  {
                                        \SaxNoten
                                }
                        }
                }

                \new Staff = "posaune" {
                                \set Staff.instrumentName = \markup { Posaune (C) }
                                \set Staff.midiInstrument = "trombone"
                                \transposition c
                                \key e \major
                                \clef bass
                                \transpose c c {
                                        \PosaunenNoten
                                }
                }


        >>

          \midi {}
          \layout {}
}
