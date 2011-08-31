(defglobal ?*all_fp* = all_fp)
;(open "all.dat" all_fp "w")


(defrule tran1
(declare (salience 12))
?f <-(tran-word-wc-typ-form-h_id-comp  ?lev ?wrd ?wc ?typ ?frm ?hid $?comlist)
(test (or (eq ?lev 2) (eq ?lev 1)))
=>
 (retract ?f )
 (printout  ?*all_fp*  "(tran-word-wc-typ-form-h_id-comp  "  ?lev "    "?wrd "    "?wc "    "?typ "    "?frm "    "?hid "     "(implode$ $?comlist) ")" crlf)
 
)

(defrule tran2
(declare (salience 11))
?f1 <-(Sentence range is ?range)
=>
(printout  ?*all_fp* "(Sentence range is  " ?range ")" crlf)
)  

;(load-facts "all_tran_pada.dat")
;(run)
;(facts)
;(exit)





