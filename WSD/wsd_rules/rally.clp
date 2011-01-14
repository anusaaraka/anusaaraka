
(defrule rally0
(declare (salience 5000))
(id-root ?id rally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamaGata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rally.clp 	rally0   "  ?id "  jamaGata )" crlf))
)

;"rally","N","1.jamaGata{Sakwi_praxarSana_kA}"
;He has organized a public rally.   
;--"2.gAdZiyoM_kI_prawiyogiwA"
;There is a car rally from Delhi to Bombay via Jaipur.      
;--"3.svAsWa_me_suXAra"
;she got unexpected rally of life after a prolong illness.  
;
(defrule rally1
(declare (salience 4900))
(id-root ?id rally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekawriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rally.clp 	rally1   "  ?id "  ekawriwa_kara )" crlf))
)

;"rally","VTI","1.ekawriwa_karanA"
;The general rallied his scattered army.
;The party rallied to the support of the Prime Minister at the Boat Club.  
;--"2.lABa_karanA"
;The pound rallied today against the German mark
;
