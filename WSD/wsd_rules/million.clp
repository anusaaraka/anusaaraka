; Added by human being
(defrule million0
(declare (salience 5000))
(id-root ?id million)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id millions)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xasa_lAKa))
(assert (id-wsd_number ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  million.clp  	million0   "  ?id "  xasa_lAKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number  " ?*wsd_dir* "  million.clp    million0   "  ?id " s )" crlf))
)

(defrule million1
(declare (salience 4900))
(id-root ?id million)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAKoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  million.clp 	million1   "  ?id "  lAKoM )" crlf))
)

; It is made up of millions of cells.
(defrule million2
(declare (salience 4800))
(id-root ?id million)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xasa_lAKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  million.clp 	million2   "  ?id "  xasa_lAKa )" crlf))
)

;"million","N","1.xasa lAKa"
;We would be happier with a million laughs than with a million rupees.
;
;
