
(defrule arch0
(declare (salience 5000))
(id-root ?id arch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vakra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arch.clp 	arch0   "  ?id "  vakra )" crlf))
)

;"arch","Adj","1.vakra"
;Her arch smile left him dreaming.
;
(defrule arch1
(declare (salience 4900))
(id-root ?id arch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meharAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arch.clp 	arch1   "  ?id "  meharAba )" crlf))
)

;"arch","N","1.meharAba"
;The building was full of high arches.
;Mughal architecture is known for its beautiful arches.
;
