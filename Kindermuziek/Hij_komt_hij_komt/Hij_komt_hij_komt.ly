\version "2.26.0"

\header {
  title = "Hij komt, Hij komt"
  tagline = ##f
}


global = {
  \time 4/4
  \key f \major
  \tempo 4=100 
}
  
chordNames = \chordmode {
  \global
  s8   
  \repeat volta 2 {
  f1| % 2
  bes2 f2 | % 3
  g:m f | % 4
  g:7 c |} % 5
  %f1 | % 6
  %bes2 f2 | % 7
  %g2:m f | % 8
  %g:7 c | % 9
  
  c1:7 | % 10
  bes2  c | % 11
  f1 | % 12
  bes2 f | % 13
  g:m f | % 14
  c:7 f \bar "|." 
}

melody = \relative c' {
  \global
   \partial 8 
   c8 | % 1
   \repeat volta 2 {f4.  a8  c4.  f,8 | % 2
   bes8  d8  f8  d8  c4.  a8 | % 3
   bes8  g8  d8  bes'8  a8  f8  c8  a'8 |  % 4 
   g8  g8  b8  b8  c4.  c,8 | }  \break % 5
 %  f4.  a8  c4.  f,8 | % 6
 %  bes8  d8  f8  d8  c4.  a8 | \break % 7
 %  bes8  g8  d8  bes'8  a8  f8  c8  a'8 | % 8
 %  g8  g8  b8  b8  c4.  c,8 | % 9 %\bar "|."
   
   bes'4.  a8  g4.  c,8 | % 10
   bes'8  a8  g8  f8  g4.  c,8 \bar "||"  \break % 11
   f4.  a8  c4.  f,8 | % 12
   bes8  d8  f8  d8  c4.  a8 | \break % 13
   bes8  g8  d8  bes'8  a8  f8  c8  a'8 | % 14
   g8  g8  e8  e8  f2 \bar "|."
}

words = \lyricmode {
  Hij "komt," hij "komt," die lie -- ve goe -- de "Sint," mijn bes -- te
  "vriend," jouw bes -- te "vriend," de vriend van ie -- der "kind." 
  Mijn %words_twee
  
  %rest lyrics
  zoet is "koek," wie stout is krijgt
  de "roe..." Hij "komt," hij "komt," die lie -- ve goe -- de "Sint," mijn bes
  -- te "vriend," jouw bes -- te "vriend," de vriend van ie -- der "kind." 
}

words_twee = \lyricmode { 
  " " hart -- je "klopt," mijn hart -- je klopt zo "blij," wat brengt hij "u," wat brengt
  hij "mij," wat brengt hij u en "mij?" Wie 
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
    \vspace#8 
    
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
   \image #X #35  "Hij_komt_hij_komt.png" 
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}
