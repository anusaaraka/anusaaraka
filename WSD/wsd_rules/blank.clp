
(defrule blank0
(declare (salience 5000))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blank.clp 	blank0   "  ?id "  KAlI )" crlf))
)

(defrule blank1
(declare (salience 4900))
(id-root ?id blank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rikwa_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blank.clp 	blank1   "  ?id "  rikwa_sWAna )" crlf))
)

;"blank","N","1.rikwa_sWAna"
;
;
