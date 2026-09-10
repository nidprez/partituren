\version "2.26.0"

\header {
  title = "Er is er één jarig"
%  subtitle = "Kabouter Plop"
  tagline = ##f
}


global = {
  \time 6/8
  \key f \major
  \tempo 4=100
}
  
chordNames = \chordmode {
  \global
    \partial 8 
  s8 f2. s2. d4.:m7 g4.:m7  f2. s2. d2.:m7 c4. g:7 c2. bes2.    
   f2. c2.  f2. bes2. c2.  c2.:7 f2. 
}

melody = \relative c' {
  \global 
  \partial 8
   c8 | f c f a f a | c4 c8 c4 bes8 | a g f g d e | f4. r4 c8
      | f c f a f a | c8 c c c4 a8 | g4 e8  g f d | c4. r4 c8 |
        bes'4 bes8 bes4 c8 | a4 a8 a4 f8 | g4 g8 g f g | a4. r4 a8 |
        bes4 a8 g4 f8 | e4 d8 c4 a'8 | c4 bes8 a4 g8 | f4. r4.\bar "|."
   

}

words = \lyricmode {
  Er is er één ja -- rig, hoe -- ra, hoe -- ra
  dat kun je wel zien: dat is hij.
  Dat vind -- en wij al -- len zo pret -- tig, ja ja
  en daa -- rom zing -- en wij blij.

  Hij le -- ve lang, hoe -- ra, hoe -- ra
  hij le -- ve la -- ng, hoe -- ra
  hij le -- ve lang, hoe -- ra, hoe -- ra
  hij le -- ve lang, hoe -- ra!
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
    \new ChordNames { \chordNames}
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
 
      \column {
        " "
        " "
        " "
        " "
        " "
        " "
        " " 
        " " 
        \image #X #60   "Er_is_er_een_jarig.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
