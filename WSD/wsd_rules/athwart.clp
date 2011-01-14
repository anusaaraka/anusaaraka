
(defrule athwart0
(declare (salience 5000))
(id-root ?id athwart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  athwart.clp 	athwart0   "  ?id "  AdZA )" crlf))
)

;"athwart","Adj","1.AdZA"
; The athwart figures do not convey any meaning.
;
(defrule athwart1
(declare (salience 4900))
(id-root ?id athwart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  athwart.clp 	athwart1   "  ?id "  AdZA )" crlf))
)

;"athwart","Prep","1.AdZA"
