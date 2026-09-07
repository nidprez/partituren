\version "2.26.0"

\header {
  title = "Boer, wat zeg je van mijn kippen"
%  subtitle = "Kabouter Plop"
  tagline = ##f
}


global = {
  \time 6/8
  \key c \major
  \tempo 4=90
}
  
chordNames = \chordmode {
  \global
  f2. c4.:7 f4. s4. d4.:m7 c4.:7 f4.
  d4.:m7 bes4. g4.:7 c4.:7
  d4.:m7 bes4. g4.:7 c4.:7
  f2. c4.:7 f4. s4. d4.:m7 c4.:7 f4.

}

melody = \relative c'' {
  \global 
   c4 a8 c4 a8 | g a b a4 f8 | c'4 a8 c4 a8 | g a g f4. | 
   f8 e f d4 d8 | g4 f8 e4 c8 | f4 f8 d4 d8 | g4 f8 e4. | 
   c'4 a8 c4 a8 | g a b a4 f8 | c'4 a8 c4 a8 | g a g f4. \bar "|."
   

}

words = \lyricmode {
  Boer, wat zeg je van \skip1 mijn kip -- pen
  boer, wat zeg je van \skip1 mijn haan?
  Heb -- ben ze dan geen mooi -- e ve -- ren
  of staat jou de kleur niet aan?
  Boer, wat zeg je van \skip1 mijn kip -- pen
  boer, wat zeg je van \skip1 mijn haan?
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
        \image #X #55   "Boer_wat_zeg_je_van_men_kippen.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
