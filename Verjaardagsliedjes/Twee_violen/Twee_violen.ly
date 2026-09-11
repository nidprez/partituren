\version "2.26.0"

\header {
  title = "Lang zal hij leven"
  tagline = ##f
}


global = {
  \time 4/4
  \key f \major
  \tempo 4=120
}
  
chordNames = \chordmode {
  \global
  f1 s c f s4 bes f2 s4 bes f2 bes f bes4 c f c f1
  
}

melody = \relative c'' {
  \global
  c4. d8 c bes a g | f f f f f4 a | g8 c, c c   c c c c | a' f f f f2 |
  c'4 d c r8 a | c4 d c r8 c | f f e d c c c c | d4 e8 e f4 c | f2 r 
  \bar "|."
}


 
words = \lyricmode {
  Twee vi -- o -- len en een trom -- mel en een fluit
  want "..." \skip1 \skip1 is ja -- rig en de vlag -- gen hang -- en uit.
Ei, ei, ei, we zijn zo blij
want "..." \skip1 \skip1 is ja -- rig en dat feest vie -- ren wij
ei, ei!
  
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
    \vspace#4
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
    \image #X #50 "Twee_violen.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
 }
}
