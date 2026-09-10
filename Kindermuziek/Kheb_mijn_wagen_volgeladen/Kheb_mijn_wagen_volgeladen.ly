\version "2.26.0"

\header {
  title = "'k Heb m'n wagen volgeladen "
  tagline = ##f
}


global = {
  \time 3/4
  \key f \major
  \tempo 4=100
}
  
chordNames = \chordmode {
  \global
  s4 f2. c2.:7 s2. s4 f2. s2. c2. s2. f2. s1 c:7 s2 f2 s4 c f2 s4 c f2
}

melody = \relative c' {
  \global \partial 4
  c8. c16 | f4 a e8. f16 | g4 bes e,8. f16 | g2 a4 | 
  \time 4/4 g f r c8. c16 |
  \time 3/4 f4 a e8. f16 | g4 bes8. e,16 e8. f16 | g2 a4 | g f r \break \bar "||"
  \time 2/4 c'4 c8 c d c bes a bes4 g | bes bes8 bes | c bes a g | a4 f | f c8. c16 | f4 r | f c8. c16 | f4 r 
  \bar "|."
}


 
words = \lyricmode {
  "'k Heb" m'n wa -- gen vol -- ge -- la -- den  
  vol met ou -- de wij -- ven.
  Toen we op de mar -- kt  kwa -- men
  be -- gon -- nen zij te kij -- ven.
  Nu neem ik van mijn le -- vens -- da -- gen  
  geen ou -- de wij -- ven op m'n wa -- gen.  
  
  Hop, paard -- je, hop  
  hop, paard -- je, hop!  
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
    \new ChordNames {\chordNames \chordNames \chordNames }
   % \new FretBoards \chordNames
    \new Staff { \melody \melody \melody}
     >>
  \midi {} 
}
  


% Add text and/or image
\markup{
  \column{
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
      \column{
        " "
        " "
        " "
        \underline \bold "'k Heb mijn wagen volgeladen: "
        "'k Heb m'n wagen volgeladen   "
        "vol met oude wijven.   "
        "Toen we op de markt kwamen   "
        "begonnen zij te kijven.   "
        "Nu neem ik van mijn levensdagen   "
        "geen oude wijven op m'n wagen.   "
        "   "
        "Hop, paardje, hop   "
        "hop, paardje, hop!   "
        "   "
        "'k Heb m'n wagen volgeladen   "
        "vol met oude mannen.   "
        "Toen we op de markt kwamen   "
        "begonnen ze saam te spannen.   "
        "Nu neem ik van mijn levensdagen   "
        "geen oude mannen op m'n wagen.   "
        "   "
        "Hop, paardje, hop   "
        "hop, paardje, hop!   "
        "   "
        
      }
      \column{
        " "
        " "
        " "
        " "
        "'k Heb m'n wagen volgeladen   "
        "vol met jonge meisjes.   "
        "Toen we op de markt kwamen   "
        "zongen zij als sijsjes.   "
        "Nu neem ik van mijn levensdagen   "
        "steeds jonge meisjes op m'n wagen.   "
        "   "
        "Hop, paardje, hop   "
        "hop, paardje, hop!   "
        " " 
        " "
        " "
        \image #X #50 "Kheb_mijn_wagen_volgeladen.png"

    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
    }
 }
}
