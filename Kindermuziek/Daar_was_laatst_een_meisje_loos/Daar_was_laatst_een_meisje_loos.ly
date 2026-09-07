\version "2.26.0"

\header {
  title = "Daar was laatst een meisje loos"
%  subtitle = "Kabouter Plop"
  tagline = ##f
}


global = {
  \time 3/4
  \key f \major
  \tempo 4=90
}
  
chordNames = \chordmode {
  \global
  f2. s s s d:m7 c c:7 f s s d:m8 s f g:m7 c:7 f 
}

melody = \relative c'' {
  \global 
   a2 g4 | f2 c4 | a'2 g4 | f2. | a4 g a | c2 c4 | bes a g | a2 f4
   a2 g4 | f2 c4 | a'2 g4 | f2. | a4 g a | c d c | bes a g | f2. \bar "|."
   

}

words = \lyricmode {
  Daar was laatst een mei -- sje loos
  die wou gaan va -- ren, die wou gaan va -- ren
  daar was laatst een mei -- sje loos
  die wou gaan va -- ren als li -- cht -- ma -- troos.
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
\bold \underline "Daar was laatst een meisje loos:"
											     
        "Daar was laatst een meisje loos           "
        "die wou gaan varen, die wou gaan varen    "
        "daar was laatst een meisje loos           "
        "die wou gaan varen als lichtmatroos.      "
        "										   "
        "Zij moest klimmen in de mast              "
        "maken de zeilen, maken de zeilen          "
        "zij moest klimmen in de mast              "
        "maken de zeilen met touwtjes vast.        "
        "										   "
        "Maar door storm en tegenweer              "
        "sloegen de zeilen, sloegen de zeilen      "
        "maar door storm en tegenweer              "
        "sloegen de zeilen van boven neer.         "
        "										   "
        "Zij moest komen in de kajuit              "
        "kreeg een pak ransel, kreeg een pak ransel"
        "zij moest komen in de kajuit              "
        "kreeg een pak ransel en toen was het uit. "
        "										   "
        "Och kap'teintje sla me niet               "
        "ik ben uw liefje, ik ben uw liefje        "
        "och kap'teintje sla me niet               "
        "ik ben uw liefje zoals gij ziet.          "
      %  \image #X #55   "Boer_wat_zeg_je_van_men_kippen.png"
     }
      \column {
        " "
        " "
        " "

        \image #X #35   "Daar_was_laatst_een_meisje_loos.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
