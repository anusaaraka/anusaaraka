
(defrule ready0
(declare (salience 5000))
(id-root ?id ready)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ready.clp 	ready0   "  ?id "  wEyAra )" crlf))
)

(defrule ready1
(declare (salience 4900))
(id-root ?id ready)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_Xana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ready.clp 	ready1   "  ?id "  prApwa_Xana )" crlf))
)

;"ready","N","1.prApwa_Xana"
;She is not having enough of the ready.   
;--"2.kAma_me_lAne_ke_liye_wEyAra"    
;The watchman keeps his spear && torch ready to hand.
;
;
