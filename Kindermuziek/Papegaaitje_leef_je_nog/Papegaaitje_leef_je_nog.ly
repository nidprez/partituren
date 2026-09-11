\version "2.26.0"

\header {
  title = "Papegaaitje, leef je nog?"
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
  f2. s2. c2. s2. f2. s2. c2. s2. f2. s2. bes2. s2. f2. c2. f2.  
}

melody = \relative c' {
  \global   
   f4 f8 f4 a8 | c4 a8 f4. | g4. g| e c | 
   f4 f8 f4 a8 | c4 a8 f4. | g4. g| e c | 
   f4 f8 f4 f8 | f4 f8 f4 f8 | f4 f8 f4 f8 | f4 f8 f4. |
  f a | c a | f r \bar "|."
}


globalt = {
  \time 6/8
  \key g \major
}
  
chordNamest = \chordmode {
  \globalt 
  \repeat volta 2 { g2. s2. d2. s2. } g2. s2. c2. s2. g2. d2. g2.  
}

melodyt = \relative c'' {
  \globalt   
   \repeat volta 2 { g4 g8 g4 b8 | d4 b8 g4. | a4. a| fis d | 
   }
   g4 g8 g4 g8 | g4 g8 g4 g8 | g4 g8 g4 g8 | g4 g8 g4. |
  g b | d b | g r \bar "|."
}





globaltt = {
  \time 6/8
  \key a \major
}
  
chordNamestt = \chordmode {
  \globaltt
 \repeat volta 2 { a2. s2. e2. s2. }a2. s2. d2. s2. a2. e2. a2.  
}

melodytt = \relative c'' {
  \globaltt   
   \repeat volta 2 {a4 a8 a4 cis8 | e4 cis8 a4. | b4. b| gis e |} 
   a4 a8 a4 a8 | a4 a8 a4 a8 | a4 a8 a4 a8 | a4 a8 a4. |
  a cis | e cis | a r \bar "|."
}


words = \lyricmode {
   Pa -- pe -- gaai -- tje, leef je nog?
  Ie -- ja, dee -- ja.
  Ja me -- neer, ik ben er nog!
  Ie -- ja, dee -- ja.
  "'k Heb"  "m'n" e -- ten op -- ge -- ge -- ten
  en "m'n" drink -- en la -- ten staan.
  Ie -- ja, dee --ja, poef!

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
        
          \bold \underline "Papegaaitje, leef je nog?:"
        "Papegaaitje, leef je nog?   "
        "Ieja, deeja.   "
        "Ja meneer, ik ben er nog!   "
        "Ieja, deeja.   "
        "'k Heb m'n eten opgegeten   "
        "en m'n drinken laten staan.   "
        "Ieja, deeja, poef!   "
        " "
        "Papegaaitje...   "
        "'k Heb m'n appel opgegeten "
        "en m'n peertje laten staan "
        "Ieja, deeja, poef!   "
        "   "
        "Papegaaitje...   "
        "'k Heb m'n papje opgegeten "
        "en m'n sapje laten staan   "
        "Ieja, deeja, poef!   "
        "Ieja, deeja, poef!   "

        
        
        }
 
      \column {
        " "
        " "
        " " 
       \image #X #55   "Papegaaitje_leef_je_nog.png"
     }

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
