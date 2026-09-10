\version "2.26.0"

\header {
  title = "Lang zal hij leven"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=100
}
  
chordNames = \chordmode {
  \global
  c1 s  s g c2 f c f c g:7 c1 
}

melody = \relative g' {
  \global
  e4 e8. e16 e4 c | g'4 g8. g16 g4 e | g4 g8. g16 a8 g f e | d4 d d g8 f | e2 f | g a4 f | e2 d | c r    	
  \bar "|."
}


 
words = \lyricmode {
  Lang zal hij le -- ven  
  lang zal hij le -- ven  
  lang zal hij le -- ven in de glo -- ri -- a  
  in de glo -- ri -- a, in de glo -- ri -- a!  
  
}


\markup { \vspace #1 }
% Generate PDF
\score {
  <<
    \new ChordNames \chordNames
   % \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
     >>
  \layout { }
}


% Generate midifile
\score {
    \unfoldRepeats 
  <<
    \new ChordNames \chordNames
   % \new FretBoards \chordNames
    \new Staff { \melody }
     >>
  \midi {} 
}
  


% Add text and/or image
\markup{
  \column{
    "Hieperderpiep, hoera!  " 
    "Hieperderpiep, hoera!  " 
    "Hieperderpiep, hoera!  " 
    \vspace#4
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
    \image #X #50 "Lang_zal_hij_leven.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
 }
}
