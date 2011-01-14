
(defrule ravish0
(declare (salience 5000))
(id-root ?id ravish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ravishing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id awisuMxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  ravish.clp  	ravish0   "  ?id "  awisuMxara )" crlf))
)

;"ravishing","Adj","1.awisuMxara"
;She looks ravishing in that dress.    
;
(defrule ravish1
(declare (salience 4900))
(id-root ?id ravish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BagAkara_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ravish.clp 	ravish1   "  ?id "  BagAkara_le_jA )" crlf))
)

;"ravish","VT","1.BagAkara_le_jAnA"
;He has ravished a girl from the bus station.    
;--"2.mohiwa_karanA"    
;Aishvarya rai is a ravishing beauty.    
;
;