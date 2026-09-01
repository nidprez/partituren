\version "2.26.0"

\header {
  title = "Op een grote paddenstoel"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=90
}
  
chordNames = \chordmode {
  \global
  \set noChordSymbol = ""
  c2 r2 g2 c2  
  c2 r2 g:7 c2 
  c2 f g c
  c r g:7 c 
}

melody = \relative c' {
  \key c \major 
  \global
    c8 c c d  | e e e4  |
    d8 c d e   | c4 g    | \break
    e'8 e e f  | g g g4  |
    f8 e f g   | e4 c4   | \break
    g'8 g  g e | a8 a a4 |
    f8 e f a   | g2      | \break
    c,8 c c d  | e e e4	 | 
    d8 c d e   | c4 r4   \bar "|." 
}

words = \lyricmode {
  Op een gro- te  pad- den- stoel
  rood met wit- te stip- pen,
  Zat ka- bout- er Spil- le- been
  Heen en weer te wip- pen
  'Krak', zei toen die pad- den- stoel
  Met een die- pe zucht
  Al- le- bei de been - tjes
  Ho- pla in de lucht! 
}

wordss = \lyricmode {
  Maar ka- bou- ter Spil- le- been 
  hield niet op met wip- pen
  Op die gro- te pad- den- stoel 
  rood met wi- tte sti- ppen
  Daar kwam va- der Lang- baard aan 
  en die zei toen luid,
  'Moet dat stoel- tje ook ka- pot 
  Spil- le- been schei uit!'
}

\markup { \vspace #1 }

\score {
  <<
    \new ChordNames \chordNames
   % \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
    \addlyrics { \wordss }
  >>
  \layout { }
  \midi { }
}

\markup{
   \column{
    \vspace#10
    
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    "" \image #X #40 "op_een_grote_paddenstoel.png"
    }
   }
 
}