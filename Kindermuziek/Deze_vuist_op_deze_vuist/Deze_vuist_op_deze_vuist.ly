\version "2.26.0"

\header {
  title = "Deze vuist op deze vuist"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
}
  
chordNames = \chordmode {
  \global
  \set noChordSymbol = ""
  c1 g:7 c f2 g4 c 
}

melody = \relative c' {
  \global
   c8  d8  e8  d8  c8  d8  e4 | % 1
   d8  e8  f8  e8  d8  e8  f4 | % 2
   e8  f8  g8  f8  e8  f8  g8  g8 | % 3
   a8  a8  g8  e8  d4  c4 \bar "|."
   

}

words = \lyricmode {
    De -- ze vuist op de -- ze vuist De -- ze vuist op de -- ze vuist De -- ze
  vuist op de -- ze vuist en zo klim ik naar bo -- ven.  
}


\markup { \vspace #1 }
% Generate PDF
\score {
  <<
    \new ChordNames \chordNames
   % \new FretBoards \chordNames
    \new Staff {  \tempo 4=90 \melody }
    \addlyrics { \words }
     >>
  \layout { }
}

% Generate midifile
\score {
    \unfoldRepeats 
  <<
    \new ChordNames {\chordNames \chordNames \chordNames \chordNames }
   % \new FretBoards \chordNames
    \new Staff {  \tempo 4=90 \melody \tempo 4=110 \melody \tempo 4=130 \melody \tempo 4=160 \melody }
     >>
  \midi {}
}
  
% Add text and/or image
\markup{
   \column{
    \vspace#8 
    
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
    \image #X #60 "Deze_vuist_op_deze_vuist.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
