\version "2.26.0"

\header {
  title = "Hansje pansje kevertje"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=120
}
  
chordNames = \chordmode {
  \global
  c1 s c g2 g:7 c1 f g:7 c 
}

melody = \relative g' {
  \global
  g2 a8 g fis g | e4 g8 g g4  r | g2  a8 g fis g | d4 d8 d g f e d | c4 e g c | d8. c16 b8. c16 a4 r |
  b2 b8 g a b | c4 c8 c c4 r 
  \bar "|."
}


 
words = \lyricmode {
  Hoofd, schou -- ders, knie en teen, knie en teen.  
  Hoofd, schou -- ders, knie en teen, knie en t -- e -- e -- n.  
  O -- ren, o -- gen, punt -- je van je neus.  
Hoofd, schou -- ders, knie en teen, knie en teen.  
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
    \vspace#6  
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
     \image #X #60 "Hoofd_schouders_knie_en_teen.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
 }
}
