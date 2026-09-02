\version "2.26.0"

\header {
  title = "Zeg Roodkapje"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=160 
}
  
chordNames = \chordmode {
  \global
  s2 | c1  | % 1
  s | % 2
  g1| % 3
  c1| % 4
  c | % 5
  s | % 6
  c2 g2 | % 7
  c1 \bar "|." 
}

melody = \relative c' {
  \global
    \partial 2  c4
   e4  g4  g8  g8  g4  a4 | % 1
   g4  e4  c4  c4 | % 2
   d2  d4  d4 |  % 3
   e2  c4  e4 |   % 4
   g4  g8  g8  g4  a4 |   % 5
   g4  e4 r2 | % 6
   c2  d2 | % 7
   c1 \bar "|." 
    %repeat
   

}

words = \lyricmode {
  Zeg Rood -- kap -- je waar ga je he -- en zo a -- lleen zo a -- lleen Zeg Rood
  -- kap -- je waar ga je he -- en zo a -- lleen  
}

words_twee = \lyricmode {
    "'K ga"  bij groot -- moe -- der koek -- jes breng -- en In het bos, in het bos 
    "'K ga"  bij groot -- moe -- der koek -- jes breng -- en In het bos
    
}

words_drie = \lyricmode {
    In het bos zijn de wil -- de dier -- en In het bos, in het bos 
    In het bos zijn de wil -- de dier -- en In het bos
}

words_vier = \lyricmode {
    Ben niet bang voor de wil -- de dier -- en Ben niet bang, ben niet bang 
    Ben niet bang voor de wil -- de dier -- en Ben niet bang
}

words_vijf = \lyricmode {
    "'k Zal" eens zien of jij niet bang bent 
    "'k Zal" eens zien, "'k zal" eens zien 
    "'k Zal" eens zien of jij niet bang bent 
    "'k Zal" eens zien
}

words_zes = \lyricmode {
    Pas maar op daar " " komt de wolf aan Pas maar op, pas maar op
    Pas maar op daar " " komt de wolf aan Pas maar op
}
"In het bos zijn de wilde dieren " "In het bos, in het bos "
    "In het bos zijn de wilde dieren " "In het bos " " "
    "Ben niet bang voor de wilde dieren " "Ben niet bang, ben niet bang "
    "Ben niet bang voor de wilde dieren " "Ben niet bang " " "
    "'k Zal eens zien of jij niet bang bent "
    "'k Zal eens zien, 'k zal eens zien "
    "'k Zal eens zien of jij niet bang bent " "'k Zal eens zien " " "
    "Pas maar op daar komt de wolf aan " "Pas maar op, pas maar op "
    "Pas maar op daar komt de wolf aan " "Pas maar op" 

\markup { \vspace #1 }
% Generate PDF
\score {
  <<
    \new ChordNames \chordNames
   % \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
    \addlyrics { \words_twee }
    \addlyrics { \words_drie }
    \addlyrics { \words_vier }
    \addlyrics { \words_vijf }
    \addlyrics { \words_zes }
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
    \vspace#8 
    
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
    \image #X #60   "Zeg_Roodkapje.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
