\version "2.26.0"

\header {
  title = "Iene miene mutte"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=160
}
  
chordNames = \chordmode {
  \global
  c2 f c1 s2 f c1 s f s g g:7 c }

melody = \relative g' {
  \global
  g4 g a a g2 e g a g e g e a1 a4 a a g f2 e d g c, r 
  \bar "|."
}


 
words = \lyricmode {
  Ie -- ne mie -- ne mut -- te
  tien pond grut -- ten
  tien pond kaas
  ie -- ne mie -- ne mut -- te is de baas!
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
    "Maar de baas die was niet thuis, " 
    "want hij lag in het ziekenhuis."  
    \vspace#7
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
    \image #X #40 "Iene_miene_mutte.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
 }
}
