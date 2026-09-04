\version "2.26.0"

\header {
  title = "We maken een kringetje"
  tagline = ##f
}


global = {
  \time 4/4
  \key f \major
  \tempo 4=110
}
  
chordNames = \chordmode {
  \global
  \set noChordSymbol = ""
 s8 | % 1
  f1 c2:7 f s1 | % 2
  c2:7 f c1 f c f s c2:7 f s1 c2:7 f 
}

melody = \relative c' {
  \global
    \partial 8  f8
  | % 1
   f4  a8  bes8  c8  c8  a8  a8 | % 2
   bes8  bes8  g8  g8  a4  f8  f8 | % 3
   f4  a8  bes8  c8  c8  a8  a8 | % 4
   bes4  g4  f2 | % 5
   g2  e4  c4 | % 6
   a'2  f2 | % 7
   g2  e4  c4 | % 8
   a'2  f4  a8  bes8 | % 9
   c4  a8  bes8  c4  a8  bes8 | % 10
   c8  bes8  a8  g8  f4  a8  bes8 | % 11
   c4  a8  bes8  c4  a8  bes8 | % 12
   c8  bes8  a8  g8  f4 r4 \bar "|."
}


 
words = \lyricmode {
  We ma -- ken een kring -- e -- tje van jong -- ens en van mei -- sjes We ma --
  ken een kring -- e -- tje van tra -- la -- la Maak nu een bui -- ging Maak nu
  een bui -- ging bij de hand bij de hand pak je vriend -- je bij de hand bij de
  hand bij de hand pak je vriend -- je bij de "hand!"
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
      \image #X #60 "We_maken_een_kringetje.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
 }
}
