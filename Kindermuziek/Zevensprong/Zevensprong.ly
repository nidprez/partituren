\version "2.26.0"

\header {
  title = "De zevensprong"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=120
}
  
chordNames = \chordmode {
  \global
  c1 g2 c s1 g2:7 c s1 d:m g:7 c s s s s s s c2 g:7 c1  }

melody = \relative c' {
  \global
  c8 b c d e4 e8 e| d4 d8 d e4 c | e8 d e f g4 g8 g | f4 g e4. g8 | g4 g8 g a4. g8 | g4 f f8 d d e |
  f4. f8 g4. f8 | f4 e e g8 g | c,2. g'8 g | c,2. g'8 g | c,2. g'8 g | c,2. g'8 g | c,2. g'8 g | c,2 r8 g'8 g f | e2 d | c r
  \bar "|."
}


 
words = \lyricmode {
  Heb je wel ge -- hoord van de ze -- ven, de ze -- ven
  heb je wel ge -- hoord van de ze -- ven -- sprong?
  Ze zeg -- gen dat ik niet dans -- en kan
  maar ik kan dans -- en als een e -- del -- man.
  Dat is één
  dat is twee
  dat is drie
  dat is vier
  dat is vijf
  dat is zes
  en dat is ze -- e -- ven!
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
    \image #X #60 "Zevensprong.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
 }
}
