\version "2.26.0"

\header {
  title = "Ze kunnen zeggen wat ze willen"
%  subtitle = "Kabouter Plop"
  tagline = ##f
}


global = {
  \time 6/8
  \key f \major
  \tempo 4=160
}
  
chordNames = \chordmode {
  \global
    \partial 8*4 
  s2 f2. s2. bes2. s2. c2. s2. f2. s2. s2. s2. bes2.    
   s2. c2. s2. f2. s2.
}

melody = \relative c' {
  \global 
  \partial 8*4 
   c8 c4 c8 | a'4 a8 a4 a8 | a4 a8 g4 f8 | g4. d4. | d4. r4 f8 |
   e4 e8 e4 e8 | e4 e8 d4 e8 | d4. c4. | c4 c8 c4 c8 | a'4. r4 a8 | a4 a8 g4 a8 |
   bes4. d,4. | g4.  g4  f8 | e4. e4 e8 | e4 e8 d4 e8 | f4. a4. | f4. r4. \bar "|."
   

}

words = \lyricmode {
  Ze kun -- nen zeg -- gen wat ze wil -- len maar de o -- li -- fant
  Die heeft de dik -- ste bil -- len van het he -- le land
  En de gi -- raf de al -- ler -- lang -- ste ne -- e -- ek
  En het nijl -- paard de al -- ler -- groot -- ste bek bek bek
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
    \new ChordNames { \chordNames \chordNames \chordNames \chordNames \chordNames}
   % \new FretBoards \chordNames
    \new Staff { \melody \melody \melody \melody \melody}
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
        
          \bold \underline "De familie Olifant: "

        "Refrein:                                          "
        "    Ze kunnen zeggen wat ze willen maar de olifant"
        "    Die heeft de dikste billen van het hele land  "
        "    En de giraf de aller-langste ne-e-ek          "
        "    En het nijlpaard de aller-grootste bek bek bek"
        "	                                               "
        "1.  De flamingo heeft de aller-dunste poten       "
        "    De palmboom de aller-hardste noten            "
        "    De krokodil de aller-grootste mo-o-ond        "
        "    En de baviaan de aller-roodste kont kont kont "
        "	                                               "
        "(Refrein)                                         "
        "	                                               "
        "2.  De papagaai heeft de aller-gekleurdste kleren "
        "    De pauw de aller-mooiste veren                "
        "    De mier heeft de aller-sterkste ru-u-ug       "
        "    En de ergste prik komt van de mug mug mug     "
        "	                                               "
        "(Refrein)                                         "

     

        }
 
      \column {
        " "
        " "
        " "
        " "
        " " 
        " " 
        \image #X #40   "Ze_kunnen_zeggen_wat_ze_willen.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
