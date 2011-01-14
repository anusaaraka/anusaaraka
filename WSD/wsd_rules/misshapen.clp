
(defrule misshapen0
(declare (salience 5000))
(id-root ?id misshapen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa_AkAra_vAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  misshapen.clp 	misshapen0   "  ?id "  galawa_AkAra_vAlI )" crlf))
)

;"misshapen","Adj","1.galawa_AkAra_vAlI"
;The dress looks misshapen.
;
(defrule misshapen1
(declare (salience 4900))
(id-root ?id misshapen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa_AkAra_vAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  misshapen.clp 	misshapen1   "  ?id "  galawa_AkAra_vAlI )" crlf))
)

;"misshapen","V","1.galawa_AkAra_vAlI"
;The ball was misshapened under the pressure.
;
