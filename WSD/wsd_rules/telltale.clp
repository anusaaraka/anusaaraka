
(defrule telltale0
(declare (salience 5000))
(id-root ?id telltale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAPa_xiKAI_xene_vAle))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  telltale.clp 	telltale0   "  ?id "  sAPa_xiKAI_xene_vAle )" crlf))
)

;"telltale","Adj","1.sAPa_xiKAI_xene_vAle"
;The case had telltale clues.
;
(defrule telltale1
(declare (salience 4900))
(id-root ?id telltale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cugalaKora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  telltale.clp 	telltale1   "  ?id "  cugalaKora )" crlf))
)

;"telltale","N","1.cugalaKora"
;Karuna is a real telltale.
;
