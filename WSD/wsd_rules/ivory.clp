
(defrule ivory0
(declare (salience 5000))
(id-root ?id ivory)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAWI_xAzwa_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ivory.clp 	ivory0   "  ?id "  hAWI_xAzwa_kA )" crlf))
)

;"ivory","Adj","1.hAWI_xAzwa_kA"
;This ivory piece is remarkable.
;
(defrule ivory1
(declare (salience 4900))
(id-root ?id ivory)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gajaxaMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ivory.clp 	ivory1   "  ?id "  gajaxaMwa )" crlf))
)

;"ivory","N","1.gajaxaMwa"
;Things made of ivory are expensive.
;
