\version "2.26.0"

\header {
  title = "Lang zal hij leven"
  tagline = ##f
}


global = {
  \time 3/4
  \key g \major
  \tempo 4=100
}
  
chordNames = \chordmode {
  \global
  s4 g2. d2. s2. g2. s2. c2. s2. g2 d4 g2.   
}

melody = \relative g' {
  \global
  \partial 4 d8. d16 | e4 d g | fis r d8. d16 | e4 d a' | g r d8. d16 | d'4 b g | fis e r | r2 c'8. c16 | b4 g a | g2 r4    \bar "|."
}


 
words = \lyricmode {
  Hap -- py birth -- day to you  
  Hap -- py birth -- day to you  
  Hap -- py birth -- day dear "..." \skip1  
  Hap -- py birth -- day to you  
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
  " "
  " "
  " "
  " "
  \bold \underline "Alternatieve tekst:"
  "Happy birthday to you  "
  "In de wie staat een koe "
  "En de koe zegt 'I love you'  "
  "Happy birthday to you  "
  
\vspace#4
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
    \image #X #50 "Happy_birthday.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
 }
}
