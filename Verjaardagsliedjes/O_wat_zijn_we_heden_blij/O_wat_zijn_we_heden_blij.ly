\version "2.26.0"

\header {
  title = "O, wat zijn we heden blij"
%  subtitle = "Kabouter Plop"
  tagline = ##f
}


global = {
  \time 3/4
  \key f \major
  \tempo 4=160
}
  
chordNames = \chordmode {
  \global
  f2. s s s d:m7 c c:7 f s s s d:m7  f g:m7 c:7 f 
}

melody = \relative c'' {
  \global 
   a2 g4 | f2 c4 | a'2 g4 | f2. | a4 g a | c2 c4 | bes a g | a2 f4
   a2 g4 | f2 c4 | a'2 g4 | f2. | a4 g a | c d c8 c | bes4 a g | f2. \bar "|."
   

}

words = \lyricmode {
  O, wat zijn we he -- den blij  
  "..." \skip1 is ja -- rig, "..." \skip1 is ja -- rig.  
  O, wat zijn we he -- den blij  
  "..." \skip1 is ja -- rig en \skip1  dat vie -- ren wij!  
  
 }

words_twee = \lyricmode {
  En dan krijg je kaas op brood  
  op een klein bord -- je, op een klein bord -- je.  
  En dan krijg je kaas op brood  
  op een klein bord -- je en dan word je zo groot!  

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
    \new ChordNames { \chordNames \chordNames}
   % \new FretBoards \chordNames
    \new Staff { \melody \melody }
     >>
  \midi {}
}
  
% Add text and/or image
\markup{
    \vspace#4
    
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
   \column{
    \fill-line{

     
      \column {
        " "
        " "
        " "

       \image #X #50   "O_wat_zijn_we_heden_blij.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
