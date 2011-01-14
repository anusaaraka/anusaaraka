
(defrule childhood0
(declare (salience 5000))
(id-root ?id childhood)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacapana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  childhood.clp 	childhood0   "  ?id "  bacapana )" crlf))
)

(defrule childhood1
(declare (salience 4900))
(id-root ?id childhood)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacapana_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  childhood.clp 	childhood1   "  ?id "  bacapana_kA )" crlf))
)

;"childhood","N","1.bacapana"
;I can never forget my childhood.
;
