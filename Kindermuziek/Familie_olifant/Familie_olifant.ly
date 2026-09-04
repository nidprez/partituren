\version "2.26.0"

\header {
  title = "De familie Olifant"
%  subtitle = "Kabouter Plop"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=110
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
   d4  d4  c2 | % 4
   g'4  g4  f4  f4 | % 5
   e4  e4  d4  d4 | % 6
   g4  g4  f4  f4 | % 7
   e4  e4  d4  d4 | % 8
   c4  c4  g'4  g4 | % 9
   a4  a4  g2 | % 10
   f4  f4  e4  e4 | % 11
   d4  g4  c,2 \bar "|."
   

}

words = \lyricmode {
   Jong -- ens mei -- sjes aan de "kant!" Want daar komt een O -- li -- fant Di
  -- kke po -- "ten," gro -- te o -- ren En een la -- nge slurf van vo -- ren
  Jong -- ens mei -- sjes aan de kant want daar komt een o -- li -- fant
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
    \new ChordNames { \chordNames \chordNames \chordNames \chordNames}
   % \new FretBoards \chordNames
    \new Staff { \melody \melody \melody \melody}
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
        
          \bold \underline "De familie Olifant: "
          "Jongens, meisjes aan de kant"
"Want daar komt een olifant  "
"Dikke poten, grote oren     "
"En een lange slurf van voren"
"Jongens, meisjes aan de kant"
"Want daar komt een olifant  "
" "
"Jongens, meisjes aan de kant"
"Daar komt baby olifant   "
"Dunne pootjes, kleine oortjes "
"En een mini-slurf van voren "
"Jongens, meisjes aan de kant"
"Want daar komt een olifant  "
" "
"Jongens, meisjes aan de kant"
"Daar komt papa olifant       "
"Dikke poten, grote oren     "
"En een lange slurf van voren"
"Jongens, meisjes aan de kant"
"Want daar komt een olifant  "
" "
"Jongens, meisjes aan de kant"
"Daar komt mama olifant       "
"Mooie poten, lieve oren     "
"En een lange slurf van voren"
"Jongens, meisjes aan de kant"
"Want daar komt een olifant  "
" "
"Jongens, meisjes aan de kant"
"De familie Olifant          "
     

        }
 
      \column {
        " "
        " "
        " "
        " "
        " " 
        " " 
        \image #X #60   "Familie_olifant.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
