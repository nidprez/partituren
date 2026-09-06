\version "2.26.0"

\header {
  title = "Olifantje in het bos"
%  subtitle = "Kabouter Plop"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=130
}
  
chordNames = \chordmode {
  \global
  \set noChordSymbol = ""
  c1 f2 c g:7 c g c s f c g c f c g c1 f2 c g:7 c g:7 c
}

melody = \relative c' {
  \global 
   c4  c4  g'4
   g4 | % 1
   a4  a4  g2 | % 2
   f4  f4  e4  e4 | % 3
   d4  d4  c2 | \break % 4
   g'4  g4  f4  f8 f | % 5
   e4  e4  d2 | % 6
   g4  g4  f4  f4 | % 7
   e4  e4  d2 | \break  % 8
   c4  c4  g'4  g4 | % 9
   a4  a4  g2 | % 10
   f4  f4  e4  e4 | % 11
   d4  g4  c,2 \bar "|."
   

}

words = \lyricmode {
  O -- li -- fan -- tje in het bos          
        Laat je ma -- ma toch niet los   
        An -- ders raak je de weg nog kwijt
        En dan heb je la -- ter spijt.
        O -- li -- fan -- tje in het bos          
        Laat je ma -- ma toch niet los   
		
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
    \new ChordNames { \chordNames \chordNames \chordNames}
   % \new FretBoards \chordNames
    \new Staff { \melody \melody \melody}
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
        
          \bold \underline "Olifantje in het bos: "
                  "Olifantje in het bos          "
        "Laat je mama toch niet los   "
        "Anders raak je de weg nog kwijt"
        "En dan heb je later spijt"
        "Olifantje in het bos          "
        "Laat je mama toch niet los   "
		" "
        "Olifantje in de zee           "
        "Ga je nog eens met mij mee    "
        "Spetter spatter spetter spat  "
        "En dan wordt je lekker nat    "
        "Olifantje in de zee           "
        "Ga je nog eens met mij mee    "
		" "
        "Olifantje in de wei           "
        "Wat kijk jij ontzettend blij  "
        "Tussen de koeien en de schapen"
        "Oh wat zal je lekker slapen   "
        "Olifantje in de wei           "
        "Wat kijk jij onzettend blij   "
     

        }
 
      \column {
        " "
        " "
        " "
        " "
        " " 
        " " 
        \image #X #40   "Olifantje_in_het_bos.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
