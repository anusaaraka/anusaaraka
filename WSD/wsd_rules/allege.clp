
(defrule allege0
(declare (salience 5000))
(id-root ?id allege)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id alleged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Aropiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  allege.clp  	allege0   "  ?id "  Aropiwa )" crlf))
)

;"alleged","Adj","1.Aropiwa{kaWiwa}"
;He is an alleged criminal.
;
(defrule allege1
(declare (salience 4900))
(id-root ?id allege)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_sabUwa_ke_Aropa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allege.clp 	allege1   "  ?id "  binA_sabUwa_ke_Aropa_lagA )" crlf))
)

;"allege","V","1.binA_sabUwa_ke_Aropa_lagAnA"
; He alleged that he was not the culprit in the  crime.
;
;
