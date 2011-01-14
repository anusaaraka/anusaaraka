
(defrule storm0
(declare (salience 5000))
(id-root ?id storm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AzXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  storm.clp 	storm0   "  ?id "  AzXI )" crlf))
)

;"storm","N","1.AzXI"
;The storm destroyed many villages.
;
(defrule storm1
(declare (salience 4900))
(id-root ?id storm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  storm.clp 	storm1   "  ?id "  hamalA_kara )" crlf))
)

;"storm","V","1.hamalA_karanA"
;The troops stormed into the city.
;
