
(defrule ebony0
(declare (salience 5000))
(id-root ?id ebony)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AbanUsa_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ebony.clp 	ebony0   "  ?id "  AbanUsa_kA )" crlf))
)

;"ebony","Adj","1.AbanUsa_kA"
;The table is made of ebony.
;
(defrule ebony1
(declare (salience 4900))
(id-root ?id ebony)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AbanUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ebony.clp 	ebony1   "  ?id "  AbanUsa )" crlf))
)

;"ebony","N","1.AbanUsa"
;Ebony is a hard black wood.
;
