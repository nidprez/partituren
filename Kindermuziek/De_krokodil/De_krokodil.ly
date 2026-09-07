\version "2.26.0"

\header {
  title = "De krokodil"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=100
}
  
chordNames = \chordmode {
  \global
  \set noChordSymbol = ""
 r8 \repeat volta 2{ c1 f2 g c1 f2 g c1 f2 g }
 \alternative{
   {g1:7 c}
   {g1:7 c}
}}

melody = \relative g' {
  \global \partial 8 g8 |
  \repeat volta 2 {c,4 e g2 | f4 e8 f g4 g8 g | c,4 e g2 | f4 e8 f g4. g8 |
  c,4 e g2 | f4 e8 f g4. g8 | } 
  \alternative{ 
       {g4. g8 g f e d c2 r4. g'8}
       {g4. g8 g f e d c4 c' c2 }}
     \bar "|."
   

}
 
words = \lyricmode {
  De kro -- ko -- dil, zwemt in het wa -- ter
  De kro -- ko -- dil, ligt e -- ven stil
  De kro -- ko -- dil, kruipt dicht -- er -- bij
  En hap! Dan bijt hij in je bil. De
  hap! Dan bijt hij in je bil. Au! Au!
  
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
    \new ChordNames \chordNames
   % \new FretBoards \chordNames
    \new Staff { \melody }
     >>
  \midi {} 
}
  
% Add text and/or image
\markup{
   \column{
    \vspace#7
    
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
    \image #X #60 "De_krokodil.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
