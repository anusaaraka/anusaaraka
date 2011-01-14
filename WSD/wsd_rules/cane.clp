
(defrule cane0
(declare (salience 5000))
(id-root ?id cane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cane.clp 	cane0   "  ?id "  beMwa )" crlf))
)

;"cane","N","1.beMwa"
;Brown wall paint would go well with cane furniture.
;--"2.CadZI"
;Some old men donot like to walk with the support of a cane.
;--"3.gannA"
;The juice shop at the end of the street also gives sugar cane juice.
;
(defrule cane1
(declare (salience 4900))
(id-root ?id cane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beMwa_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cane.clp 	cane1   "  ?id "  beMwa_mAra )" crlf))
)

;"cane","VT","1.beMwa_mAranA"
;The teacher caned the students for disobedience.
;
