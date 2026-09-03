\version "2.26.0"

\header {
  title = "Ik ben een muzikantje"
  subtitle = "Kabouter Plop"
  tagline = ##f
}


global = {
  \time 4/4
  \key g \major
  \tempo 4=110
}
  
chordNames = \chordmode {
  \global
  \set noChordSymbol = ""
  s8 g1| % 1
  d2:7 g2 | % 2
  s d | % 3
  g d | % 4
  g1 | % 5
  c2 g | % 6
  s1 | % 7
  d2:7 g
}

melody = \relative c' {
  \global 
    \partial 8  d8
   g8  g8  g8  g8  b4  g8  b8 | % 1
   d8  d8  c8  c8  b2 | % 2
   d4  b8  g8  a8  fis8  d4 | % 3
   d'4  b8  g8  a8  fis8  d4 | % 4
   b'8  b8  b8  b8  b8  d8  d4 | % 5
   c8  c8  c8  c8  e8  d8  d4 | % 6
   b8  b8  b8  b8  b8  d8  d4 | % 7
   d8  d8  d8  d8  g,2 \bar "|."
   

}

words = \lyricmode {
  Ik ben een mu -- zi -- kan -- tje ik kom uit Zwits -- er -- land En ik kan spe
  -- \skip1 len Wat kun jij spe -- \skip1 len Fi -- sa fi -- sa fi -- sar -- mon
  fi -- sa fi -- sa fi -- sar -- mon fi -- sa fi -- sa fi -- sar -- mon fi --
  sar -- mon -- i -- "ca!" 
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
    \new ChordNames { \chordNames \chordNames \chordNames \chordNames \chordNames \chordNames \chordNames \chordNames }
   % \new FretBoards \chordNames
    \new Staff { \melody \melody \melody \melody \melody \melody \melody \melody }
     >>
  \midi {}
}
  
% Add text and/or image
\markup{
%    \vspace#10
    
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
   \column{
    \fill-line{
      \column{
        " "
        " "
        " "
        
          \bold \underline "Ik ben een muzikantje: "
          "Ik ben een muzikantje, ik kom uit Zwitserland "
          "En ik kan spelen. Wat kun jij spelen? "
          "Fisa, fisa, fisarmon. Fisa, fisa, fisarmon! "
          "Fisa, fisa, fisarmon. Fisarmonica!" 
          " " 
          "Ik ben een muzikantje.... " 
          "Trommelstok... " 
          " "
          "Contrabas... " 
          " " 
          "Mandolin(e)... " 
          " " 
          "Saxofoon... " 
          " " 
          "Bombardon... "
          " " 
          "Piccolo... " 
          " " 
          "Scheve schijftrombon(e)... " 
          " "
          " "
          " "
     

        }
 
      \column {
        " "
        " "
        " "

   
        " "
        

      \image #X #60   "Plop_Ik_ben_een_muzikantje.png"
      " " " " " "
      \center-align {\image #X #25    "Plop.png"}
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
