\version "2.26.0"

\header {
  title = "Het lachlied"
  subtitle = "Samson & Marie"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=110
}
  
  
chordNames_intro = \chordmode {
  \global
 \repeat volta 2 {
    c1 | % 1
    f1 | % 2
    g1 | % 3
    c1     | % 4

}}

chordNames = \chordmode {
  \global
  \repeat volta 2 {
    c | % 5
    f | % 6
    f | % 7
    g| % 8
    e:m  | % 9
    a:m| % 10
    f2 d:m | % 11
    g1:7 
  }
  | % 12
  f | % 13
  e2:7  a2:m | % 14
  d1:7 | % 15
  f 2 g:7 | % 16
  s4 g a:m g:7 | % 17
  c1 | % 18
  f1 | % 19
  d:m | % 20
  g:7  | % 21
  c| % 22
  f| % 23
  g| % 24
  g2:7 c2 \bar "|."
}


intro_melody = \relative c' {
  \global
 \repeat volta 2 {
    r1 | % 1
    r1 | % 2
    r1 | % 3
    r1 | % 4
}}

melody = \relative c' {
  \global \bar ".|:"  \textMark \markup { "Intro: C F G C x2" } 
  
  \repeat volta 2 {
     c8  c4  d8  e8  d8  c8  b8 | % 5
     a4  d4 r2 | % 6
     d8  d4  e8  f8  e8  d8  c8 | % 7
     d2 r2 | % 8
     e8  e4  f8  g8  f8  e8  d8 | % 9
     d4  c4  d4  e4 | % 10
     f8  f4  f8  f8  e8  d8  c8 | % 11
     <d g>2 r2 
  }
  | % 12
   g8  f8  e8  f8  g8  f8  e8  f8 | % 13
   e8  f8  e8  d8  c2 | % 14
   e8  d8  d8  d8  e8  d8  d8  d8 | % 15
   c8  b8  c8  e8  d2 | % 16
   R1 | \bar "||" % 17 
   g8  f8  e8  f8  g2 | % 18 
   a8  g8  f8  g8  a2 | % 19
   a8  g8  f8  g8  a2 | % 20
   c8  c8  b8  b8  a8  a8  g8  g8 | % 21
   g8  f8  e8  f8  g2 | % 22
   a8  g8  f8  g8  a2 | % 23
   g8  g8  g4  g8  g8  g4 | % 24
   g8  f8  e8  d8  c2 \bar "|." 
   

}

words = \lyricmode {
  Sam -- son wat zit je daar te treu -- ren Ik ben een bee -- tje sip van --
  daag Zal ik pro -- be -- ren om je op te beu -- ren Oh ja Ma -- rie dat heb ik
  graag Dan heb ik een top i -- dee -- tje klei -- ne slo -- me hond Laat ons ge
  -- woon sa -- men lach -- en want dat is ge -- zond Hi hi hi hi hi ha ha ha ha
  ha hi hi hi hi hi ha ha ha ha ha ha ha ha hi hi hi hi hi ha ha ha ha ha hi hi
  hi ha ha ha hi hi hi hi hi 
}

words_twee = \lyricmode {
  Wil je gaan wan -- de -- len of spe -- len Gaan we ra -- vo -- tten op het
  strand Dan bou -- wen we wel hon -- derd zand -- kas -- te -- len Neen ik
  blijf lie -- ver in mijn mand 
}
\markup { \vspace #1 }

\markup {
  % Remove the layout dimensions so it floats freely
  \with-dimensions #'(0 . 0) #'(0 . 0) {

    \fill-line {
      % Pushes the image to the far right
      \hspace #1 
      % Path to your image, scaled to your preferred size
      \image #X #18 #"Samson_en_Marie_Lachlied.png"
    }
  }
}

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
     
  <<
    \new ChordNames { \unfoldRepeats{\chordNames_intro \chordNames} \chordNames \chordNames }
   % \new FretBoards \chordNames
    \new Staff { \unfoldRepeats{\intro_melody \melody} \melody \melody }
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
          \bold \underline "Het Lachlied: "
        "1. Samson wat zit je daar te treuren              "
        "   Ik ben een beetje sip vandaag                  "
        "   Zal ik proberen om jou op te beuren            "
        "   Oh ja Marie dat wil ik graag                   "
        " "
        "2. Wil je gaan wandelen of spelen                 "
        "   Gaan we ravotten op het strand                 "
        "   Dan bouwen we wel honderd zandkastelen         "
        "   Nee ik blijf liever in mijn mand               "
        "                                                  "
        "   Dan heb ik een top ideetje kleine slome hond   "
        "   Laat ons gewoon samen lachen want dat is gezond"
        "                                                  "
        "Refrein:                                          "
        "   Hi hi hi hi hi, ha ha ha ha ha"
        "   Hi hi hi hi hi, ha ha ha ha ha ha ha ha"
        "   Hi hi hi hi hi, ha ha ha ha ha    "
        "   Hi hi hi, ha ha ha, hi hi hi hi hi"
        "                                                  "
        }
      \hspace#1
      \column {
        " "
        "3. Kon dit refrein je wat plezieren"
        "   Ja ik werd vrolijk in een wip                  "
        "   Ook al weet ik niet echt waarom we gieren      "
        "   Ik lach me zomaar uit m'n dip                  "
        "                                                  "
        "   Dan doen we nu verder tot we rollen op de grond"
        "   Laat ons gewoon samen lachen want dat is gezond                             "
        "                                                  "
        "   (Refrein)                                      "
        "                                                  "
        "3. Zit je te kniezen of te pruilen                "
        "   Zing dan met ons uit volle lach                "
        "   Dan heb je echt geen zin meer om te huilen     "
        "   En wordt dit toch een leuke dag                "
        "                                                  "
        "   Kom probeer het allemaal en lach je buikje rond"
        "   Laat ons gewoon samen lachen want dat is gezond                             "
        "                                                  "
        "   (Refrein)                                      "
        %   \image #X #60   "Plop_Ik_ben_een_muzikantje.png"
     }
    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}

