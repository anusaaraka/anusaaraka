
(defrule dispirit0
(declare (salience 5000))
(id-root ?id dispirit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dispiriting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uxAsIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dispirit.clp  	dispirit0   "  ?id "  uxAsIna )" crlf))
)

;"dispiriting","Adj","1.uxAsIna"
;She wore a rather dispiriting expression in her face.
;
(defrule dispirit1
(declare (salience 4900))
(id-root ?id dispirit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dispirited )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uxAsIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dispirit.clp  	dispirit1   "  ?id "  uxAsIna )" crlf))
)

;"dispirited","Adj","1.uxAsIna"
;He wore a dispirited expression in her face.
;
;
(defrule dispirit2
(declare (salience 4800))
(id-root ?id dispirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mana_wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dispirit.clp 	dispirit2   "  ?id "  mana_wodZa )" crlf))
)

;"dispirit","VT","1.mana_wodZanA"
;His illness dispirited her.
;
;
