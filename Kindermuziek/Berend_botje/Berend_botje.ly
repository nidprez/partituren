\version "2.26.0"

\header {
  title = "Berend Botje"
  tagline = ##f
}


global = {
  \time 4/4
  \key f \major
  \tempo 4=140 
}
  
chordNames = \chordmode {
  \global
  \repeat volta 2 { f1 | s  | s c:7 s s s f s  s s c:7 s s s f s s c:7 f s s c:7 f} c:7 f  
}

melody = \relative c' {
  \global
  \repeat volta 2 { \bar ".|:" 
  c4 a' a a | c, a' a a | c, a' a a | a bes g g8 g |
  c,4 g' g4. g8 | c,4 g' g2 | d'4. c8 bes4 e, | g f8 f f2 \bar "||"
  c4 a' a a | c, a' a a | c, a' a a | a bes8 bes g4 g8 g |
  c,4 g' g4. g8 | c,4 g' g2 | d'4. c8 bes4 e, | g f f d' \bar "||"
  c4. bes8 a4 d | c4. bes8 a2 | bes8 bes bes bes a a g e | d'4 c c d
  c4. bes8 a4 d | c4. bes8 a2 | bes8 bes bes bes a a g e | g4 f f r}
  bes8 bes bes bes a a g e | g4 f f r
  \bar "|." 
    %repeat
   

}

words = \lyricmode {
  Be -- rend Bot -- je ging uit va -- ren
  Met zijn boot -- je naar Zuid -- la -- ren
  De weg was recht, de weg was krom
  Nooit kwam Be -- rend Bot -- je wee --  rom
  Een, twee, drie, vier, vijf, zes, ze -- ven
  Waar is Be -- rend Bot -- je ge -- ble -- ven?
  Hij is niet hier, hij is niet daar
  Hij is naar A -- me -- ri -- ka
  A -- me -- ri -- ka, A -- me -- ri -- ka
  Eén keer in de rond -- te van je hop -- sa -- sa!
  A -- me -- ri -- ka, A -- me -- ri -- ka
  Twee keer in de rond -- te van je hop -- sa -- sa!
  Drie keer in de rond -- te van je hop -- sa -- sa!

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
    \new ChordNames {\chordNames  }
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

      \column{
        " "
        " "
        " "   
        " "
        \image #X #80   "Berend_botje.png"
      }
    }
  }
}