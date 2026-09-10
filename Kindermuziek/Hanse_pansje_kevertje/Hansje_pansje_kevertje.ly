\version "2.26.0"

\header {
  title = "Hansje pansje kevertje"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=160
}
  
chordNames = \chordmode {
  \global
  c1 a:m7 g c s a:m7 g:7 c s f g:7 c s a:m7 g:7 c
}

melody = \relative c' {
  \global
  c4 c c d | e e e e | d c d e | c2 r | e2 e4 f | g2 g4 g | f e f g | e2 r |
  g g4 g | a2 a4 a | f e f a | g2 r | c,4 c c d | e e e e | d c d e | c2 r |
  \bar "|."
}


 
words = \lyricmode {
  Hans -- je Pans -- je ke -- ver -- tje  
  die klom eens op een hek.  
  Neer viel de re -- gen  
  die spoel -- de Hans -- je weg.  
  Op kwam de zon  
  en die maak -- te Hans -- je droog.  
  Hans -- je Pans -- je ke -- ver --tje  
  die klom toen weer om -- hoog.
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
      \image #X #40 "Hansje_pansje_kevertje.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
 }
}
