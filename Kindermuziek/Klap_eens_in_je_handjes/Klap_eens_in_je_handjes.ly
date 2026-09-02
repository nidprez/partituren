\version "2.26.0"

\header {
  title = "Klap eens in je handjes"
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
  c1 f2 c
  g2 c g:7 c
  c1 f2 c
  \repeat volta 2 { f4. c4. g4.:7 c4. } 
}

melody = \relative c' {
  \global
    c8. d16 e8. f16 g4 g        | a c g2 | \break
    f8. f16 f8. f16 e8. e16 e4 | d g c, r   | \break
    c8. d16 e8. f16 g4 g        | a8. a16 c8. a16 g2 | \break 
    \time 6/8
    \repeat volta 2 {  c4. g8 a g | f e d c4. } %\bar "|."
   

}

words = \lyricmode {
  Klap eens in je hand- jes, blij, blij, blij
op je bo- ze bol- le- tje, al- le- bei.
Hand- jes in de hoog- te, hand- jes in je zij
Zo va- ren de scheep- jes voor- bij.  
}


\markup { \vspace #1 }

\score {
  <<
    \new ChordNames \chordNames
   % \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
     >>
  \layout { }
}

\score {
    \unfoldRepeats 
  <<
    \new ChordNames \chordNames
   % \new FretBoards \chordNames
    \new Staff { \melody }
     >>
  \midi {}
}
 
\markup{
   \column{
    \vspace#8 
    
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    \image #X #80 "klap_eens_in_je_handjes.png"
    }
   }
 
}
