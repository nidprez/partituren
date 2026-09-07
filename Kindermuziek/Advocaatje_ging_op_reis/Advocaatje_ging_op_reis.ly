\version "2.26.0"

\header {
  title = "Advocaatje ging op reis"
%  subtitle = "Kabouter Plop"
  tagline = ##f
}


global = {
  \time 4/4
  \key f \major
  \tempo 4=160
}
  
chordNames = \chordmode {
  \global
  \repeat volta 2 { 
  f1 s c:7 f f s c:7 f}
}

melody = \relative c' {
  \global \repeat volta 2 { \bar ".|:" 
   f4 a f a | f a c2 | c4. bes8 a4 g | a2 f |
   f4 a f a | f a c2 | c4. bes8 a4 g | f1   }
}



chordNamest = \chordmode {
  \time 4/4
  \key g \major
  \repeat volta 2 { 
  g1 s d:7 g g s d:7 g}
}

melodyt = \relative c' {
  \time 4/4
  \key g \major
  \repeat volta 2 { \bar ".|:" 
   g'4 b g b | g b d2 | d4. c8 b4 a | b2 g |
   g4 b g b | g b d2 | d4. c8 b4 a | g1   }
}


chordNamestt = \chordmode {
  \time 4/4
  \key a \major
  \repeat volta 2 { 
  a1 s e:7 a a s e:7 a}
}

melodytt = \relative c' {
  \time 4/4
  \key a \major
  \repeat volta 2 { \bar ".|:" 
   a'4 cis a cis | a cis e2 | e4. d8 cis4 b | cis2 a |
   a4 cis a cis | a cis e2 | e4. d8 cis4 b | a1   }
}

words = \lyricmode {
   Ad -- vo -- caat -- je ging op reis, tie -- re -- lie -- re -- lie -- re
   ad -- vo -- caat -- je ging op reis, tie -- re -- lie -- re -- lom.

}

words_twee = \lyricmode {
   Met zijn hoed -- je op zijn arm, tie -- re -- lie -- re -- lie -- re
   met zijn hoed -- je op zijn arm, tie -- re -- lie -- re -- lom.
}


\markup { \vspace #1 }
% Generate PDF
\score {
  <<
    \new ChordNames \chordNames
   % \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
    \addlyrics { \words_twee }
     >>
     
  \layout { }
}

\score {
  <<
    \new ChordNames \chordNamest
   % \new FretBoards \chordNames
    \new Staff { \melodyt }
     >>
     
  \layout { }
}

\score {
  <<
    \new ChordNames \chordNamestt
   % \new FretBoards \chordNames
    \new Staff { \melodytt }
     >>
     
  \layout { }
}

% Generate midifile
\score {
    \unfoldRepeats 
  <<
    \new ChordNames { \chordNames \chordNames \chordNames \chordNamest \chordNamest \chordNamest \chordNamestt \chordNamestt}
   % \new FretBoards \chordNames
    \new Staff { \melody \melody \melody \melodyt \melodyt \melodyt \melodytt \melodytt}
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
        
          \bold \underline "Advocaatje ging op reis: "
        "Advocaatje ging op reis, tiereliereliere           "
        "advocaatje ging op reis, tierelierelom.            "
        "Met zijn hoedje op zijn arm, tiereliereliere       "
        "met zijn hoedje op zijn arm, tierelierelom.        "
        "                                                   "
        "Bij een herberg bleef hij staan...    "
        "Met zijn hoedje op zijn arm...       "
        "                                                   "
        "Stokvis kreeg hij bij 't ontbijt ...  "
        "Met zijn hoedje op zijn arm...       "
        "                                                   "
        "'t Graatje schoot hem in zijn keel..."
        "Met zijn hoedje op zijn arm...       "
        "                                                   "
        "Dokter werd er bij gehaald...        "
        "Met zijn hoedje op zijn arm...       "
        "                                                   "
        "Maar de dokter was te laat...        "
        "Met zijn hoedje op zijn arm...       "
        "                                                   "
        "Zo ging Advocaatje dood...           "
        "Met zijn hoedje op zijn arm...       "
        "                                                   "
        "'t Gras dat groeit nu op zijn buik..."
        "Met zijn hoedje op zijn arm...       "
        
        }
 
      \column {
        " "
        " "
        " "
        " "
        " " 
        " " 
        \image #X #45   "Advocaatje_ging_op_reis.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
