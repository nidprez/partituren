\version "2.26.0"

\header {
  title = "In het bos daar staat een huisje"
  tagline = ##f
}


global = {
  \time 4/4
  \key f \major
  \tempo 4=140
}

chordNames = \chordmode {
  \global
  \repeat volta 2 { f1 | s  | s g2:m c:7 s1 s s f s c2:7  f s1 g:m f g:m c:7 f}
}

melody = \relative c' {
  \global
  \repeat volta 2 { \bar ".|:"
  c4 a' a a | c, a' a a |
  c, a' a a | a bes g r |
  c, g' g  g| c, g' g g |
  e e e e | f2 r \bar "||" \break
  c'4 a c a | bes g a r |
  c, a' a a | a g bes r |
  c, a' a a | a g bes r |
  e, e e e | f2 r
  \bar ":|."
    %repeat
  }

}

words = \lyricmode {
  In het bos daar staat een huis -- je
  "‘k keek" eens door het ven -- ster -- raam
  Kwam een haas -- je aan -- ge -- lo -- pen
  klop -- te aan de deur
  Help mij, help mij, uit de nood
  want de ja -- ger schiet mij dood
  laat mij in uw huis -- je klein
  "‘k zal" u dank -- baar zijn
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
        \image #X #80   "In_het_bos_daar_staat_een_huisje.png"
      }
    }
  }
}
