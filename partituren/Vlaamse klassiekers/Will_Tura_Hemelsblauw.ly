\version "2.26.0"

\header {
  title = "Hemelsblauw"
  subtitle = "Vocal line"
  composer = "Will Tura"
  poet = "Will Tura / Dennis Peirs"
  tagline = ##f
}

global = {
  \key a \major
  \time 4/4
  \tempo "Moderato" 4 = 96
}

melody = \relative c' {
  \global

  % Intro
  R1*4

  % Blauw, zo hemelsblauw, in gouden zonneschijn
  e2. e4 |
  e8 fis gis fis e4 cis |
  b2. cis4 |
  e4 fis gis a |
  gis2. e4 |

  % Blauw, vakantieblauw, het kan niet mooier zijn
  cis2. cis4 |
  cis8 dis e fis e4 cis |
  b2. cis4 |
  e4 fis gis a |
  a2. r4 |

  % Blue, zo voel ik mij, verloren zonder jou
  fis2. fis4 |
  fis8 gis a gis fis4 dis |
  b2. cis4 |
  dis4 e fis gis |
  fis2. r4 |

  % Blue, omdat ik nog zo van je hou
  e2. e4 |
  e8 fis gis fis e4 cis |
  b2. cis4 |
  e4 fis gis a |
  a1 |

  % Blauw, als lentedauw, die bloemen in je haar
  cis2. cis4 |
  cis8 dis e fis e4 cis |
  b2. cis4 |
  e4 fis gis a |
  gis2. e4 |

  % Trouw, eeuwige trouw, beloofden wij elkaar
  cis2. cis4 |
  cis8 dis e fis e4 cis |
  b2. cis4 |
  e4 fis gis a |
  a1 |

  % Jij bleef altijd een droom voor mij
  fis2. fis4 |
  fis8 gis a gis fis4 e |
  fis2. e4 |
  cis4 dis e fis |
  e1 |

  % Maar ik loop hier alleen en m'n droom die verdween
  e4 fis gis a |
  gis4 fis e cis |
  e4 fis gis a |
  b4 a gis fis |
  e2. r4 |

  % toen jij wegging bij mij
  cis4 e fis gis |
  a2. gis4 |
  e2. r4 |

  % 'k Voel in mijn hart
  e4 e fis gis |
  a2. r4 |

  % onze liefde blijft duren
  e4 fis gis a |
  b2. a4 |

  % Met jou wordt m'n wereld weer hemelsblauw
  e4 fis gis a |
  b4 cis b a |
  gis2. e4 |
  a1 |

  % 'k Voel in m'n hart
  e4 e fis gis |
  a2. r4 |

  % dat het ooit zal gebeuren
  e4 fis gis a |
  b2. a4 |

  % de liefde brengt ons ooit weer bij elkaar
  e4 fis gis a |
  b4 cis b a |
  gis2. e4 |
  a1 \bar "|."
}

chords = \chordmode {
  % Intro
  a1 a1 a1 a1

  % Verse
  a1 |
  a1 |
  a1 |
  e1:7 |
  e1:7 |

  a1 |
  a1 |
  fis1:7 |
  b1:m |
  gis1:7 |

  e1:7 |
  a1 |
  e1:7 |
  a1 |

  a1 |
  e1:7 |
  a1 |
  dm1 |
  a1 |

  a1 |
  bm1 |
  e1:7 |
  a1 |

  % Chorus
  e1:7 |
  a1 |
  e1:7 |
  a1 |
  e1:7 |
  a1 |
  e1:7 |
  a1
}

lyrics = \lyricmode {
  Blauw, zo he -- mels -- blauw, in gou -- den zon -- ne -- schijn,
  Blauw, va -- kan -- tie -- blauw, het kan niet mooi -- er zijn.
  Blue, zo voel ik mij, ver -- lo -- ren zon -- der jou,
  Blue, om -- dat ik nog zo van je hou.

  Blauw, als len -- te -- dauw, die bloe -- men in je haar,
  Trouw, eeu -- wi -- ge trouw, be -- loof -- den wij el -- kaar.
  Jij bleef al -- tijd een droom voor mij,
  maar ik loop hier al -- leen en m'n droom die ver -- dween
  toen jij weg -- ging bij mij.

  'k Voel in mijn hart,
  on -- ze lief -- de blijft du -- ren,
  met jou wordt m'n we -- reld weer
  he -- mels -- blauw.

  'k Voel in m'n hart,
  dat het ooit zal ge -- beu -- ren,
  de lief -- de brengt ons ooit weer
  bij el -- kaar.
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chords
    }

    \new Staff \with {
      instrumentName = "Voice"
    } {
      \clef treble
      \melody
    }

    \new Lyrics \lyricsto melody {
      \lyrics
    }
  >>

  \layout { }
  \midi { }
}
