\version "2.26.0"

\header {
  title = "'k Zag twee beren"
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
  c1 s s g f c g:7 c s f g1. c  % 1
}

melody = \relative g' {
  \global 
  g4  g4  g4 c4  | % 1
  e,4  e4  e4  g4 | % 2
  c,4  c4  d4  e4 | % 3
  g2  d2 | % 4
  a'4  f4  f4  f4 | % 5
  g4  e4  e4  e4 | % 6
  f4  d4  d4  d4 | % 7
  c4  e4  g4  g4 | % 8
  g4  g4  g2 | % 9
  a4  a4  a2 | % 10
  g4  g4  g4  g8  g8 | % 11
  g4  g4  c,2 \bar "|."
   

}

words = \lyricmode {
  "'k Zag" twee be -- ren brood -- jes sme -- ren,
  O, het was een won -- der.
  "'t Was" een won -- der, bo -- ven won -- der,
  dat die be -- ren sme -- ren kon -- den.
  Hi hi hi, ha ha ha!
  Ik stond er -- bij en ik keek er naar.
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
    \new ChordNames {\chordNames \chordNames \chordNames \chordNames \chordNames \chordNames \chordNames \chordNames}
   % \new FretBoards \chordNames
    \new Staff { \melody \melody \melody \melody \melody \melody \melody \melody}

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
        \bold  \underline "'k Zag twee beren: "  
       "'k Zag twee beren broodjes smeren,     "
       "O, het was een wonder.                "
       "Het was een wonder, boven wonder,     "
       "dat die beren smeren konden.          "
       "Hi hi hi, ha ha ha!                   "
       "Ik stond erbij en ik keek er naar.    "
       "                                      "
       "'k Zag twee apen lekker slapen,       "
       "..."
       "                                      "
       "'k Zag twee bijen autorijden,         "
       "..."       
       "                                      "
       "'k Zag twee koeien bootje roeien,     "
       "..."       
       "                                      "
       "'k Zag twee mussen de juffrouw kussen."
       "..."       
       "                                      "
       "'k Zag twee poezen samen douchen.     "
       "..."       
       "                                      "
       "'k Zag twee leeuwen lekker geeuwen.   "
       "..."       
       "                                      "
       "'k Zag twee beren broodjes smeren,    "
       "..."       
       "                                      "
      }
      \column {
        " "
        " "
        " "
        " "
        " "
        " "
        " "
        " "
      \image #X #40   "Kzag_twee_beren.png"  
      }
    }
  } 
}
