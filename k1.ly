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
    \repeat volta 2 {
      \partial 4 c8( g8 e4)-. e4-. d8( e8) e4( f4) d'8( b8 f4)-. f4-.  e8( d8) d4( e4) e'16( d c b \break

      a4 a'4) d,16( c b a g4 g'4) d16( b a g e'4 d4)-.  fis,4-. a4( g4) \break
    }

    \repeat volta 2 {
      \partial 4 g'8( e8 cis4)-. cis4-. d8( e8) e4( f4) f8( d8 b4)-. b4-. c8( d8) d4( e4) a16( g f e \break

       d4 d'4) g,16( f e d c4 c'4)  g16( e d c a'4 g4)-. b,4-. d4( c4)

    }
  }
}

rh = {
  \clef "treble"
  \rh-g
  \rh-c
}

lh-g =  {
  \key g \major
  \relative g {
    \repeat volta 2 {
      \partial 4 r4
      g4-. a4-. b4-. | b4( a4) r4 |
      fis4-. g4-. a4-. | a4( g4) r4 |

      g2( e4 | cis4 a4 d4) | g4( a4-.) a,4-. | d4-. d,4-.
    }

    \repeat volta 2 {
      \partial 4
      r4 e'4-. d'4-. c4-. | b4( a4) a8( fis8 | d4)-. c'4-. b4-. | a4( g4) r4 |

      c2( a4 | fis4 d4 g4) | c4( d4)-. d,4-. | g2
    }
  }
}

lh-c = {
    \key c \major
    \relative g {
      \repeat volta 2 {
        \partial 4
        c,8( e8 <c g'>4)-. <c g'>4-. <b g'>4-. | <c g'>4( d4) <b g'>8( d8 <b g'>4)-. <b g'>4-. <b g'>4-.

        <c g'>2 c'16( b16 a16 g16 fis2) b16( a16 g16 fis16 e2) b'4( c4 d4-.) d,4-. | g2
      }

      \repeat volta 2 {
        \partial 4
        r4 a4-. <g a>4-. <a f>8( e8) | <e a>4( d4) r4 | g4-. <f g>4-. <e g>8( d8) | <d g>4( c4) f'16( e16 d16 c16

        b2) e16( d16 c16 b16 a2) e4( f4 g4)-. g,4-. c2
      }
  }
}

lh = {
  \clef "bass"
  \lh-g
  \lh-c
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
  \layout {
     % put key sig change before volta
     \context {
        \Score
        \override BreakAlignment.break-align-orders =
           #(make-vector 3 '(
                    left-edge
                    cue-end-clef
                    ambitus
                    breathing-sign
                    clef
                    cue-clef
                    key-cancellation
                    staff-bar
                    key-signature
                    time-signature
                    custos))
    }
  }
  \midi { }
}
   
