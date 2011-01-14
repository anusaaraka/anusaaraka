
(defrule four0
(declare (salience 5000))
(id-root ?id four)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  four.clp 	four0   "  ?id "  cAra )" crlf))
)

;"four","Det","1.cAra"
;I saw four men coming.
;
(defrule four1
(declare (salience 4900))
(id-root ?id four)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  four.clp 	four1   "  ?id "  cAra )" crlf))
)

;"four","N","1.cAra"
;I saw four men coming.
;
