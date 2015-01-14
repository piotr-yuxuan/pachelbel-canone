\version "2.18.2"
\language "italiano"

\header {
  title = "Canone in re maggiore per tre violini e basso continuo"
  subtitle = "arrangiamento per piano solo, recepite in do maggiore"
  composer = "Johann Pachelbel"
  arranger = "William Wallace © 2004"
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key do \major
  \time 4/4
}

right = \relative do'' {
  \global
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)
  R1*4 \bar "||"
  mi2 re do si la sol la si \bar "||"
  <sol do mi>2 <sol si re> <mi la do> <mi sol si> <do fa la> <do mi sol> <do fa la> <re sol si> \bar "||"
  do'4 mi sol fa mi do mi re do la do mi fa la sol fa \bar "||"
  <do mi>4 mi <re sol> fa <do mi> do <si mi> re <la do> la <sol do> mi' <la, fa'> la' <si, sol'> fa' \bar "||"
  do8 si do r sol4 si do mi sol sol8 la fa mi re fa mi re do si la sol fa do' <re, sol do>4 si' \bar "||"
  <mi, do'>8 si' do r <re, sol>4 si' do mi <si sol'> sol'8 la <la, fa'> mi' re fa <sol, mi'> re' do si la sol fa do' <re, sol do>4 si'4 \bar "||"
  r4 mi re2 r4 do sol'2 la sol la si \bar "||"
  do4 mi, re2 r8 do si do sol'2 <do, la' fa> <do mi sol>  <do fa la> <re sol si> \bar "||"
  sol8 mi16( fa sol8) mi16( fa sol) sol,( la si do re mi fa mi8) do16( re mi8) mi,16( fa sol la sol fa sol mi fa sol fa8) la16( sol fa8) mi16( re mi re do re mi fa sol la fa8) la16 sol la8 si16 do sol la si do re mi fa sol \bar "||"
  <mi sol>8 mi16 fa sol8 mi16 fa <re sol>16 sol, la si do re mi fa <do mi>8 do16 re mi8 mi,16 fa sol la sol fa sol mi fa sol fa8 la16 sol fa8 mi16 re mi re do re mi fa sol la fa8    la16 sol la8 si16 do sol la si do re mi fa sol \bar "||"
  mi8 do16 re mi8 re16 do re si do re mi re do si do8 la16 si do8 mi,16 fa sol la sol fa sol do si do la8 do16 si la8 sol16 fa sol fa mi fa sol la si do la8 do16 si do8 si16 la si do re do si do la si \bar "||"
  <do mi>8 do16 re mi8 re16 do <si re> si do re mi re do si <la do>8 la16 si do8 mi,16 fa <mi sol> la sol fa sol do si do <fa, la>8 do'16 si la8 sol16 fa <mi sol> fa mi fa sol la si do la8 do16 si do8 si16 la si do re do si do la si \bar "||"
  do8 mi fa mi re4 mi8 re do mi, do la' sol4 fa8 sol la4 si8 la sol4 fa8 sol la4 sol8 la si4 do8 re \bar "||"
  <do mi>8 mi fa mi <si re>4 mi8 re do mi, do la' <mi sol>4 fa8 sol <la fa>4 si8 la <mi sol>4 fa8 sol <la fa> la sol la <sol si> si do re \bar "||"
  do8 do16 re mi8 do si si16 do re8 si la do16 re mi8 do mi mi16 re do8 si la la16 sol la8 si do mi16 re do8 mi fa do16 si la8 la sol sol16 fa sol8 si \bar "||"
 
  <do mi>8 do16 re mi8 do <si re> si16 do re8 si <la do> do16 re mi8 do <si mi> mi16 re do8 si <fa la> la16 sol la8 si <sol do> mi'16 re do8 mi <la, fa'> do16 si la8 la <sol si> sol16 fa sol8 si \bar "||"
  do4 r8 mi mi fa mi re re do r do do re do sib do sib la sib sol4 r8 do do sib la sib si4 r8 si \bar "||"
  do4 r8 <do mi> <do mi> <re fa> <do mi> <si re> <si re> do r do <la do> <si re> <la do> <sol sib> <la do> sib la sib <mi sol>4 r8 do <la do> sib la sib <re, sol si>4 r8 si' \bar "||"
  do4 mi re re, do do' si si,la la' sol sol, la la' sol r8 si \bar "||"
  <sol do mi>4 <sol' do mi> <sol si re> <sol, si re> <mi la do> <mi' la do> <mi sol si> <mi, sol si> <do fa la> <do' fa la> <do mi sol> <do, mi sol> <do fa la> <la' do fa> <sol si re> r8 mi' \bar "||"
  <sol, do mi>1
}

left = \relative do' {
  \global
  \repeat unfold 21 {
  do,8 sol' do mi sol,, re' sol si
  la, mi' la do mi,, si' mi sol
  fa, do' fa la do,, sol' do mi
  fa, do' fa la sol, re' sol si }
  <do, sol'>1 \bar "|."
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
