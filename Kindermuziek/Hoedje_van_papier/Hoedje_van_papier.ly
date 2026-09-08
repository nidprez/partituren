\version "2.26.0"

\header {
  title = "Hoedje van papier"
%  subtitle = "Kabouter Plop"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=130
}
  
chordNames = \chordmode {
  \global
  %\repeat volta 2 {
   c1  d4:m7 g:7 c2 s1 d4:m7 g:7 c2 g1:7 c s2 a:m7 d4:m7 g:7 c2
  %}
}

melody = \relative c' {
  \global \repeat volta 2 { \bar ".|:"
  c4 e g e | f8 f d4 e8 e c4 | c e g e | f8 f d d c2 |
  d8 d d d  d e f4 | e8 e  e e e f g4 | c, e g e | f8 f d d c2 }

   

}

words = \lyricmode {
  Eén, twee, drie, vier
  hoed -- je van, hoed -- je van
  één, twee, drie, vier
  hoed -- je van pa -- pier.

  Heb je dan geen hoed -- je meer
  maak er één van bord -- pa -- pier
  één, twee, drie, vier
  hoed -- je van pa -- pier.
}

words_twee = \lyricmode {
  Eén, twee, drie, vier
  hoed -- je van, hoed -- je van
  één, twee, drie, vier
  hoed -- je van pa -- pier.

  Als het hoed -- je dan niet past
  zet het in de gla -- zen -- kast
  één, twee, drie, vier
  hoed -- je van pa -- pier.
}

\markup { \vspace #1 }
% Generate PDF
\score {
  <<
    \new ChordNames \chordNames
   % \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
    \addlyrics { \words_twee }
     >>
  \layout { }
}

% Generate midifile
\score {
    \unfoldRepeats 
  <<
    \new ChordNames { \chordNames }
   % \new FretBoards \chordNames
    \new Staff { \melody }
     >>
  \midi {}
}
  
% Add text and/or image
\markup{
%    \vspace#10
    
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
   \column{
    \fill-line{
 
      \column {
        " "
        " "
        " "
        " "
        " "
        " "
        " "
        \image #X #50   "Hoedje_van_papier.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
