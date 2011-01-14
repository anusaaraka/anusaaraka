
(defrule antisocial0
(declare (salience 5000))
(id-root ?id antisocial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  antisocial.clp 	antisocial0   "  ?id "  samAja )" crlf))
)

(defrule antisocial1
(declare (salience 4900))
(id-root ?id antisocial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asAmAjika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  antisocial.clp 	antisocial1   "  ?id "  asAmAjika )" crlf))
)

;"antisocial","Adj","1.asAmAjika"
;Some anti-social elements were arrested by the police.
;--"2.samAja_ke_niyamoM_ke_prawikUla"
;He is an antisocial man so he remains aloof.
;
;
