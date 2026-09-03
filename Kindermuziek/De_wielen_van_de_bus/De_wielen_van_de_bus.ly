\version "2.26.0"

\header {
  title = "De wielen van de bus"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=140
}
  
chordNames = \chordmode {
  \global
  \set noChordSymbol = ""
  s4 | % 1
  c1 | % 2
  s  | % 3
  g  | % 4
  c  | % 5
  s  | % 6
  s  | % 7
  g  | % 8
  c
}

melody = \relative c' {
  \global \partial 4 
    g4 | % 1
   c8  c8  c8  c8  c4  e4 | % 2
   g4  e4  c2 | % 3
   d4  b4  g2 | % 4
   g'4  e4  c4  g4 | % 5
   c8  c8  c8  c8  c4  e4 | % 6
   g4  e4  c2 | % 7
   d4.  d8  g,4  b4 | % 8
   c2  c2  \bar "|."
   

}

words = \lyricmode {
  De wie -- len van de bus gaan rond en rond rond en rond rond en rond de wie --
  len van de bus gaan rond en rond Als de bus gaat rij -- "den!"
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
    \new ChordNames {\chordNames \chordNames \chordNames \chordNames \chordNames \chordNames \chordNames }
   % \new FretBoards \chordNames
    \new Staff { \melody \melody \melody \melody \melody \melody \melody }
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
        
        \bold \underline "De wielen van de bus:"
        "De wielen van de bus gaan rond en rond"
        "rond en rond, rond en rond"
        "De wielen van de bus gaan rond en rond"
        "Als de bus gaat rijden"
        " "
        "De deuren van de bus gaan open en dicht...."
        " "
        "De wissers van de bus gaan heen en weer...."
        " "
        "De lichten van de bus gaan aan en uit..."
        " "
        "De toeters van de bus doen toet toet toet..."
        " "
        "De mensen in de bus gaan op en neer..."
        " "
        "De buschauffeur zegt dag, dag, dag..."
        "Als de bus gaat stoppen"
        } 
      \column {
        " "
        " "
        " "

        \bold \underline "Alternatieve lijntjes ter inspiratie:" 
        "De motor in de bus doet vroem, vroem, vroem..."  
        " "
        "De baby's in de bus doen waah, waah, waah..."
        " "
        "De mama's in de bus zeggen shh, shh,shh... " 
        " "
        "De oma's/meme's ... die kletsen maar... " 
        "                             ... die geven een kus... "
        " "
        "De papa's in de bus die slapen maar... "
        " "
        "De opa's ... doen prot, prot, prot... " 
        "               ... boer, boer, boer... "
        " "
        "De muis in de bus doet piep, piep, piep... "
        " "
        "De kat ... miauw, miaw, miaw... "
        "     paard/koe/varken/kip/leeuw/olifant/schaap... "
        " "
        "De walvis in de bus doet MWOOEEEEEEEEEE "  
        " "
        " "
        " "      
        \image #X #40   "De_wielen_van_de_bus.png"
        }
    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
