\version "2.26.0"

\header {
  title = "De dikke spin"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=140 
}
  
chordNames = \chordmode {
  \global
  c1 g2 c s1 g2 c g1:7 c g:7 c 
}

melody = \relative c' {
  \global
  c4 e g4. a8 | g f e d c2 | c4 e g4. a8 | g f e d c2 |
  d4 d8 d f2 | e4 e8 e c2 | d8 d d d f f f f | e4 f g2 |
  
  \bar "|." 
    %repeat
   

}

words = \lyricmode {
  Rin -- tin -- tin, daar loopt een dik -- ke spin.
  Rep -- tep -- tep, hij maakt een heel groot web.

  Draad -- je om -- hoog, draad -- je om -- laag,
  draai maar in het rond en het is klaar van -- daag!
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
    \new ChordNames {\chordNames \chordNames  }
   % \new FretBoards \chordNames
    \new Staff { \melody \melody}
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
        " "   
        " "   
        "Rin-tin-tin, daar loopt een dikke spin.        "
        "Rep-tep-tep, hij maakt een heel groot web.     "
        "											    "
        "Draadje omhoog, draadje omlaag,                "
        "draai maar in het rond en het is klaar vandaag."
        "											    "
        "Rin-tin-tin, daar loopt een dikke spin.        "
        "Rep-tep-tep, hij maakt een heel groot web.     "
        "											    "
        "Draadje vooruit, draadje terug,                "
        "draai maar in het rond en handen op je rug.    "
        "											    "
        "Rin-tin-tin, daar loopt een dikke spin.        "
        "Rep-tep-tep, hij maakt een heel groot web.     "        
      }
      \column{
        " "
        " "
        \image #X #40   "Dikke_spin.png"
      }
    }
  }
}