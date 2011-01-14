
(defrule bolster0
(declare (salience 5000))
(id-root ?id bolster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id masanaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bolster.clp 	bolster0   "  ?id "  masanaxa )" crlf))
)

;"bolster","N","1.masanaxa"
(defrule bolster1
(declare (salience 4900))
(id-root ?id bolster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahArA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bolster.clp 	bolster1   "  ?id "  sahArA_xe )" crlf))
)

;"bolster","VT","1.sahArA_xenA"
