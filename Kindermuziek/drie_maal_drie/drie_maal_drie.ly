\version "2.26.0"

\header {
  title = "Drie maal drie is negen"
  tagline = ##f
}


global = {
  \time 2/4
  \key c \major
  \tempo 4=100
}
  
chordNames = \chordmode {
  \global
   c1 g2:7 c1 a2:m7 d4:m7 g:7 c2
}

melody = \relative g' {
  \global 
  \repeat volta 2 {
  e8 e e e e g g8. g16 | f8 f f a | a g g4 |
  e8 e e e | e g g g | g f e d | c2
  }
  \bar "|."
   

}
 
words = \lyricmode {
  Drie maal drie is ne -  gen
  en ie -- der zingt zijn ei -- gen lied
  drie maal drie is ne - gen
  en "..." \skip1 zingt zijn lied.
  
}
words_twee = \lyricmode {
  En "..." \skip1 moet een lied -- je zing -- en
  troe -- la -- la, troe -- la -- la
  "..." \skip1 moet een lied -- je zing -- en
  troe -- la -- la -- la -- la!
  
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
    \new ChordNames \chordNames
   % \new FretBoards \chordNames
    \new Staff { \melody }
     >>
  \midi {} 
}
  
% Add text and/or image
\markup{
   \column{
    \vspace#10
    
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
    \image #X #60 "drie_maal_drie.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
