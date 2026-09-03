\version "2.26.0"

\header {
  title = "Poesje Mauw"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=120
}
  
chordNames = \chordmode {
  \global
  \set noChordSymbol = ""
  c1 s s2 f c g c1 s f g2 c % 1
}

melody = \relative g' {
  \global g4 g c2 |
   e,4  e4  g2 | % 2
   c,4  d8  e8  f4  f4 |   % 3
   e4  e4  d2 | % 4
   g4  g4  c2 | % 5
   e,4  e4  g2 |   % 6
   c4  b8  a8  g4  f4 | % 7
   e4  d4  c2 \bar "|."
   

}

words = \lyricmode {
   Poe -- sje mauw Kom eens gauw Ik heb \skip1 Lekke -- re melk voor jou En voor
  mij rij -- ste -- brij "Oh!" wat \skip1 heer -- lijk smu -- llen "wij!"
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
    \new ChordNames {\chordNames \chordNames \chordNames }
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
        \bold  \underline "Poesje mauw: "  
        "Poesje mauw, kom eens gauw "
        "Ik heb lekkere melk voor jou "  
        "En voor mij, rijstebrij "   
        "Oh, wat heerlijk smullen wij "
        " "   
        "Hondje waf, waf, waf, waf "
        "Blijf jij van mijn lekkers af "  
        "Kom eens hier, aardig dier "  
        "Oh, wat hebben we een plezier "   
        " "  
        "Kipje tok, tok, tok, tok "   
        "Kom eens in mijn kippenhok "
        "Leg voor mij, ’n lekker ei "  
        "Oh wat heerlijk smullen wij"        
      }
      \column {
        " "
        " "
        " "
        " "
        \image #X #40   "Poesje_mauw.png"  
      }
    }
  } 
}
