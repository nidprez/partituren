\version "2.26.0"

\header {
  title = "In de maneschijn"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=110
}
  
chordNames = \chordmode {
  \global
  \set noChordSymbol = ""
  s4 | % 1
  c1 
  s 
  f2 c 
  g c 
  s1 
  s 
  f2 c 
  g c 
  f c 
  g c 
  s1 
  s1 
  s2 g:7 
  c1
  s
  s
  s2 g:7
  c4 g c2 
  
}

melody = \relative c' {
  \global
    \partial 4 e8 f
  | % 1
   g4. a8 g4 e8 f | % 2
   g4. a8 g4 r | % 3
   f8 f f f e e e e | % 4
   d4 g c, e8 f | % 5
   g4. a8 g4 e8 f | % 6
   g4. a8 g4 r | % 7
   f4 f8 f e4 e8 e | % 8
   d4 d8 d g4 r | % 9
   f4 f8 f e e e e | % 10
   d d d d c e e f | % 11
   g2 r8 e e f | % 12
   g2 r8 e e f | % 13
   g g g a g f e f | % 14
   g2 r8 e e f | % 15
   g2 r8 e e f | % 16
   g2 r4  e8 f | % 17
   g g g a g f e d | % 18 
   c4 g' c, r\bar "|."
}


 
words = \lyricmode {
  In de ma -- ne -- schijn, in de ma -- ne -- schijn
  klom ik langs het trap -- je naar het raam -- ko -- zijn.
  En je raadt het niet, en je raadt het niet
  zo vliegt een vo -- gel en zo zwemt een vis
  zo doet een dui -- zend -- poot die schoe -- nen -- poets -- er is.
  En dat is één, en dat is twee
  en dat is dik -- ke, dik -- ke, dik -- ke tan -- te Kee.
  En dat is recht, en dat is krom
  en nu draai -- en we het wiel -- tje nog eens om, rom bom!
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
    \vspace#4  
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
      \image #X #40 "In_de_maneschijn.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
 }
}
