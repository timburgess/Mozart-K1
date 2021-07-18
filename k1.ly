\version "2.23"

\header {
  title = "Minuet and Trio"
  subtitle = "K1"
  composer = "Wolfgang Amadeus Mozart (1756-1791)"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

global = {
  \time 3/4
  \tempo 4 = 80
}

rh-g =  {
  \key g \major
  \relative g' {
    \repeat volta 2 {
      \partial 4 b'8(\mf g8 b,4)-. c4-. d4-. d4( c4)    a'8( fis8 a,4)-. b4-. c4-. c4( b4) b'8( g8 \break

      e4) g8( e8 cis4)  e8( cis8 a8 g8 fis4)  \tuplet 3/2 { b8( a8 g8 } fis4)-. e4-. | d2 \break
    }

    \repeat volta 2 {
      \partial 4 d'8(\mp b8 gis4)-. f'4-. e4-. d4( c4) c8( a8 fis4)-. e'4-. d4-. c4( b4) e8(\mf c8 \break
    
      a4) c8( a8 fis4) d8( fis8 a8 c8 b4) \tuplet 3/2 { e8( c8 a8 } g4)-. fis4-. g2 \break
    }
  }
}

rh-c =  {
  \key c \major
  \relative g' {
    % bar 18
    \partial 4 c8( g8 e4)-. e4-. d8( e8) e4( f4) d'8( b8 f4)-. f4-.  e8( d8) d4( e4) e'16( d c b \break

    a4 a'4) d,16( c b a g4 g'4) d16( b a g e'4 d4)-.  fis,4-. a4( g4) s4 \break

  }
}

rh = {
  \clef "treble"
  \rh-g
  \rh-c
  \bar "|."
}

lh =  {
  \clef "bass"
  \relative g {
    \key g \major
    \partial 4 r4
    g4-. a4-. b4-. | b4( a4) r4 |
    fis4-. g4-. a4-. | a4( g4) r4 |
    g2 e4 | cis4 a4 d4 | g4 a4-. a,4-. | d4-. d,4-.

    \partial 4 r4
    e'4-. d'4-. c4-. | b4 a4 a8 fis8 | d4-. c'4-. b4-. | a4 g4 r4 |
    c2 a4 | fis4 d4 g4 | c4 d4-. d,4-. | g2

    \key c \major
    \partial 4 c,8 e8
    R2.*8

  }
}

\score {
   \context PianoStaff << 
    \context Staff = "rh" <<
      \global
      \rh
    >>
    \context Staff = "lh" <<
      \global
      \lh
    >>
  >>
  \layout { }
  \midi { }
}
   
