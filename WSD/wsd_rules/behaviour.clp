;(added by Darpan Baweja : NIT allahabad)
;(Most of us tend to blame others for our own bad behavior )
(defrule behaviour0
(declare (salience 5000))
(id-root ?id behaviour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barwAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behaviour.clp 	behaviour0   "  ?id "  barwAva )" crlf))
)

