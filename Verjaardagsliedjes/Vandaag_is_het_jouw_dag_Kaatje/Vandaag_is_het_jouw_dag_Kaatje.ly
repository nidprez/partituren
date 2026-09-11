\version "2.26.0"

\header {
  title = "  Vandaag is het jouw dag"
  tagline = ##f
}


global = {
  \time 4/4
  \key d \major
  \tempo 4=140
}
  
chordNames = \chordmode {
  \global s2 s8
  \repeat volta 2 { d1 g a s d g }
  \alternative {
    {a s1}
    {a s1 d}
  }
}

melody = \relative g' {
  \global
  \partial 8*5 a8 a g fis e | 
    \repeat volta 2 {
    d4 d8 fis4 a b8~ | b8 b4 b8 g4 b | a1  | r4. a8 a g fis e | 
    d4 d8 fis4 a b8~ | b8 b4 b8 g4 b |  }
    \alternative {
      {a2 b  | cis4.  a8 a g fis e } 
      {a2 r8 a8 b cis~| cis2 a | d r } 
      
    }
   
 \bar "|."
}


 
words = \lyricmode {
  Van -- daag is het jouw dag,
  want jij bent ja -- rig en al -- les mag  
  met sling -- ers en ba -- lon -- nen 
  aan de deur hangt een he -- le gro -- te vlag.  
  
  hie -- per -- de -- piep hoe    
  mag  
  want het is jouw dag! }


words_twee = \lyricmode {
  \skip1 \skip1 \skip1 \skip1 \skip1 
  ra! En dat we zin -- gen pro -- fi -- ci -- at  
  Van -- da -- ag is het feest  
  want jij bent ja -- rig en al -- les mag  
want het is jouw dag  }
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
  " "
  " "
  " "
  " "
   
\vspace#4
    % \image #AXIS #SIZE "path/to/file.png"
    % X = horizontal axis scaling, 15 = width in staff-spaces
    \fill-line{
    % centered image
   \image #X #50 "Vandaag_is_het_jouw_dag_Kaatje.png"
    %left justified
%   "" \image #X #80 "template.png"
    }
 }
}
