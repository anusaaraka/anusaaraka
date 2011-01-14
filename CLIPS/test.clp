(assert (id-hmng 1 "ve"))

(defrule test
(id-hmng 1 ?wrd)
=>
(open "utf8_output.dat" fp "a")
(printout fp (wx_utf8 ?wrd))
(close fp)
;(bind ?wrd (wx_utf8 ?wrd))
;(assert (utf8 ?wrd))
)

(run)
(facts)
(exit)

