\version "2.26.0"

\header {
  title = "1-2-3 Rikke Tikke Tik"
  subtitle = "Urbanus"
  tagline = ##f
}


global = {
  \time 4/4
  \key c \major
  \tempo 4=180
}
  
  

chordNames = \chordmode {
  \global
   \repeat volta 3 {
    c1 | % 1
    s | % 2
    g | % 3
    s | % 4
    c | % 5
    s | % 6
    g:7 | % 7
    c | % 8
    c | % 9

    \barNumberCheck #10
    s | % 10
    g | % 11
    s2 c | % 12
    s1 | % 13
    s | % 14
    g1:7  | % 15
    s2 c2 | % 16
    f1 | % 17
    s | % 18
    g1:7  | % 19

    \barNumberCheck #20
    s2 c2 | % 20
    f1 | % 21
    s | % 22
    f2 g2 | % 23
    c1
  }
}

melody = \relative c' {
  \global \bar ".|:"  \textMark 
  
  \markup { "Intro" } 
  \repeat volta 3 {
     e4  e4  e4  c4 | % 1
     e4  f8  g8 ~  g2 | % 2
     d4  d4  d4  b4 | % 3
     d4  e8  f8 ~  f2 | % 4
     e4  e4  e4  c4 | % 5
     e4  f8  g8 ~  g2 | % 6
     d4  f4  e4  d4 | % 7
    c1 \bar "||"  % 8

    e4  e4  e4  c4 | % 9
     e4  f4  g4  g4 | % 10
     g4  d4  d4  f4 | % 11
     e4  d4  c4  c8  c8 | % 12
     e4  e4  e4  c4 | % 13
     e4  f4  g2 | % 14
     d4  d4  d4  f4 | % 15
     e4  d4  c2 \bar "||" % 16

     a'4  a4  a2 | % 17
     a8  g8  a8  b8  c2 | % 18
     g4  g4  g4 ~  g8  g8 | % 19
     a4  g4  g2 | % 20
     a4  a4  a4  g4 | % 21
     a4  b4  c2 | % 22
     c2  d2 | % 23
    c1
  }
   

}

words = \lyricmode {
  kot kot kot kot kot -- ko -- dei 
  kot kot kot kot kot -- ko -- dei 
  kot kot kot kot kot -- ko -- dei
  kot kot kot ko -- dei!  
  Gans mijn lijf staat vol met plui -- men, grij --
  ze wi -- tte zwart en brui -- ne, "m'n" kop -- je gaat om -- hoog om -- laag,
  graan -- tjes pik -- ken doe ik graag "1" --  "2" -- "3" Ri -- kke ti -- kke "tik!"
  Ra ra ra wie ben -- ne "kik?" Is er ie -- mand die al weet hoe ik
  "heet?"
}

words_twee = \lyricmode {
  Wil je gaan wan -- de -- len of spe -- len Gaan we ra -- vo -- tten op het
  strand Dan bou -- wen we wel hon -- derd zand -- kas -- te -- len Neen ik
  blijf lie -- ver in mijn mand 
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
    \new ChordNames { \chordNames }
   % \new FretBoards \chordNames
    \new Staff { \melody  }
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
          \bold \underline "1-2-3 Rikke Tikke Tik: "      
        "1. Kot-kot-kot-kot-kot-kodei (x4)                          "
        "                                                           "
        "   Gans mijn lijf staat vol met pluimen                    "
        "   Grijze, witte, zwart en bruine                          "
        "   Mijn kopje gaat omhoog-omlaag                           "
        "   Graantjes pikken doe ik graag                           "
        "                                                           "
        "Refrein:"
        "   1-2-3 Rikke tikke tik                                   "
        "   Ra, ra, ra, wie benne-k-ik?                             "
        "   Is er iemand die al weet                                "
        "   Hoe ik heet?                                            "
        "                                                           "
        "   Ne salami, ne octopus, ne polis,         "
		"   een waterspons, ..., een fritkot, "
	"   een stuk chocolat, atomium, een kikker"	
        "   - Heel goed geraden manneke -                               "
        "                                                           "
        "2. Huit, knorr, grompf, wuit, wuit (x4)                    "
        "                                                           "
        "   'k Heb een krulletje in m'n staart                      "
        "   En een stijve stoppelbaard                              "
        "   Een snuit met twee gaatjes in                           "
        "   En een dubbele onderkin                                 "
        "                                                           "
        "(Refrein)                                   "
        "                                                           "
       
        }
      \hspace#1
      \column {
        " "
        " "
        "   Ne salami, ne spinnenkop,..., ne timbre    "
	"   ne kalkoen, Rocco Granata, ne frigo,    "
	"   ne salamander, een varken! "
        "   - Allee er zit toch ene slimme in de klas -                 "
        "                                                           "
        "3. Ha, ha, ha, hi, ha (x4)                                      "
        "                                                           "
        "   Ik ben een plezante zanger                              "
        "   Mijne neus wordt alsmaar langer                         "
        "   Ik maak liedjes voor de kleintjes                       "
        "   Over kippetjes en zwijntjes                             "
        "                                                           "
        "(Refrein)                                   "
        "                                                           "
        "   Ne salami, ne aquarium, ..., ne windel, ...,    "
		"   ne aap, ne salamander, Urbanus zelf!                            "
        "   -  Bijna juist  en omdat ge zo braaf geweest zijt                       "
        "   krijg je vandaag maar een half pakske slaag -            "
        "                                                           "
        "4. Allemaal gelijk: Tralalalalala, Tralalalalala,...       "

     }
    % centered image
    %left justified
%   "" \image #X #80 "template.png"
    }
   }
 
}

\markup {
  % Remove the layout dimensions so it floats freely
  \with-dimensions #'(0 . 0) #'(0 . 0) {

    \fill-line {
      % Pushes the image to the far right
      \hspace #1 
      % Path to your image, scaled to your preferred size
      \image #X #18 #"Urbanus_Rikke_tik.png"
    }
  }
}
