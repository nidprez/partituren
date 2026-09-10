\version "2.26.0"

\header {
  title = "Mijn haan is dood"
%  subtitle = "Kabouter Plop"
  tagline = ##f
}


global = {
  \time 4/4
  \key f \major
  \tempo 4=120
}
  
chordNames = \chordmode {
  \global
  f1 c2 f s1 c2:7 f s1 c2:7 f s1 c2 f s1 c2 f s1 c2 f
}

melody = \relative c' {
  \global 
   f4 f8 g a4 f | g e f4. r8 | a4 a8 bes c4 a | bes g a4. r8 |
   c8 c c c c c  d c | bes4 c8 bes8 a4. r8 | 
   a a a a a a bes a | g4 a8 g8 f4. r8 | 
   f f f f f f f f | c4 d8 e f4. r8 | f f f f f f f f | c4 d8 e f4. r8\bar "|."
   

}

words = \lyricmode {
  Mijn haan is dood, mijn haan is dood 
  Mijn haan is dood, mijn haan is dood 
  Hij zal niet meer zing -- en ko -- ko -- die, ko -- ko -- da 
  Hij zal niet meer zing -- en ko -- ko -- die, ko -- ko -- da 
  Ko -- ko -- ko -- ko -- ko -- ko -- ko -- ko -- die, ko -- ko -- da 
  Ko -- ko -- ko -- ko -- ko -- ko -- ko -- ko -- die, ko -- ko -- da 
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
\bold \underline "Mijn haan is dood:"
											     
                "Mijn haan is dood, mijn haan is dood (x2)  "
        "Hij zal niet meer zingen kokodie, kokoda (x2) " 
        "   "
        "Refrein:  "
        "    Kokokokoko kokodie kokoda  "
        "    Kokokokoko kokodie kokoda  "
        "   "
        "Mon coq est mort, Mon coq est mort (x2)  "
        "Il ne chantera plus kokodie, kokoda (x2)  "
        "   "
        "(Refrein)  "
        "   "
        "Mein Hahn ist tot, Mein Hahn ist tot (x2)  "
        "Er wird nicht mehr singen kokodie, kokoda (x2)"  
        "   "
        "(Refrein)  "
        "   "
        "My cock is dead, My cock is dead (x2)  "
        "He will never sing kokodie, kokoda (x2)  "
        "  "
        "(Refrein)     "  
      %  \image #X #55   "Boer_wat_zeg_je_van_men_kippen.png"
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

       \image #X #40   "Mijn_haan_is_dood.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
