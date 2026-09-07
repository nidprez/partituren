\version "2.26.0"

\header {
  title = "A B C D E F G"
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
   c4  c4  g'4 g4 | % 1
   a4  a4  g2 | % 2
   f4  f4  e4  e4 | % 3
   d4  g4  c,2 | \break % 4
   g'4  g4  f4  f | % 5
   e8 e e  e  d2 | % 6
   g4  g4  f4  f4 | % 7
   e4  e4  d2 | \break  % 8
   c4  c4  g'4  g4 | % 9
   a4  a4  g2 | % 10
   f4  f8 f  e e e e | % 11
   d4  g4  c,2 \bar "|."
   

}

words = \lyricmode {
   A B C D E F G
   Zing met on de let -- ters mee.
   H I J K L M N O P
   Q R S T U V W
   X Y Z goed op -- ge -- let.
   Dit zijn de let -- ters van het al -- fa -- bet!
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
    \new ChordNames { \chordNames }
   % \new FretBoards \chordNames
    \new Staff { \melody }
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
        
          \bold \underline "Variant: "
          "A B C D E F G"
          "meester de jongens nemen knikkers mee."
          "Stoute jongen, je mag niet klikken"
          "anders krijg je zeven tikken."
          "Meester, ga gerust uw gang"
          "voor een tik ben ik niet bang."
        
        }
 
      \column {
        " "
        " "
        " "
        " "
        " " 
        " " 
        \image #X #60   "ABC.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
