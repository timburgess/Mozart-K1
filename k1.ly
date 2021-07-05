\version "2.20"

\header {
  title = "Minuet and Trio"
  subtitle = "K1"
  composer =	"Wolfgang Amadeus Mozart (1756-1791)"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"
}

global = {
  \key g \major
  \time 3/4
  \tempo 4 = 80
}

rh =  {
  \relative g' {
    \partial 4 b'8( g8 b,4)-. c4-. d4-. d4( c4)    a'8( fis8 a,4)-. b4-. c4-. c4( b4) b'8( g8 \break

    e4) g8( e8 cis4)  e8( cis8 a8 g8 fis4)   \tuplet 3/2 { b8( a8 g8 } fis4)-. e4-. d2 s4 \break

    \partial 4 d'8( b8 gis4)-. f'4-. e4-. d4( c4) c8( a8 fis4)-. e'4-. d4-. c4( b4) e8( c8 \break
    
    a4) c8( a8 fis4) d8( fis8 a8 c8 b4) \tuplet 3/2 { e8( c8 a8 } g4)-. fis4-. g2 s4 \break
    
   \bar "|."
  }
}

lh =  {
  \relative g' {
    \partial 4 r4 
    R2.*8

    \partial 4 r4 
    R2.*8

  }
}

\score {
   \context PianoStaff << 
    \context Staff = "rh" <<
      \global
      \clef "treble"
      \rh
    >>
    \context Staff = "lh" <<
      \global
      \clef "bass"
      \lh
    >>
  >>
  \layout { }
  \midi { }
}
   
