\version "2.26.0"

\header {
  title = "Alle eendjes"
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
 f2 c | % 1
  f1 | % 2
  s2 bes4 c | % 3
  f2 bes4 c | % 4
  f2 c | % 5
  f1 | % 6
  bes2 c2 | % 7
  f1  | % 8
  s
}

melody = \relative c' {
  \global
     f4   f4   g4  g4 | % 1 
   c8  d8  c8  bes8   a4   f4 | \break % 2
    f8   g8   f8   e8   d4   c4 | % 3
    f8   g8   f8   e8   d4   c4 | \break % 4
    f4   f4   g4   g4 | % 5
   c8  d8  c8  bes8   a4   f4 | \break % 6
    d2   e2 | % 7
    f8   a8   c8   a8   f8   a8   c8   a8 | % 8
    f4   f4   f2 \bar "|."
   

}
 
words = \lyricmode {
  A -- lle eend -- jes zwem -- men in het wa -- ter fal -- de -- ral -- de --
  rie -- re fal -- de -- ral -- de -- ra -- re A -- lle eend -- jes zwem -- men
  in het wa -- ter fal fal fal -- de -- ral -- de -- ral -- de -- ral -- de --
  ral ral ral
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
    \vspace#7
    
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
    \image #X #45 "Alle_eendjes.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
