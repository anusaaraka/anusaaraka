
(defrule elevate0
(declare (salience 5000))
(id-root ?id elevate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id elevated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uccaswarIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  elevate.clp  	elevate0   "  ?id "  uccaswarIya )" crlf))
)

;"elevated","Adj","1.uccaswarIya"
;Spiritial thoughts lead to elevated mind.
;
(defrule elevate1
(declare (salience 4900))
(id-root ?id elevate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UcAz_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elevate.clp 	elevate1   "  ?id "  UcAz_uTA )" crlf))
)

;"elevate","VT","1.UcAz_uTAnA"
;The captain was elevated to the rank of a colonel.
;--"2.uTAnA{swara}"
;The teacher elevates the minds of the young students.
;
;
