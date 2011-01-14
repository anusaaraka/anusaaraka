
(defrule pine0
(declare (salience 5000))
(id-root ?id pine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIda_kA_peda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pine.clp 	pine0   "  ?id "  cIda_kA_peda )" crlf))
)

;"pine","N","1.cIda_kA_peda/xevaxAru"
;Pine trees are found in cool northern regions && are used for making furniture.
;
(defrule pine1
(declare (salience 4900))
(id-root ?id pine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAlasA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pine.clp 	pine1   "  ?id "  lAlasA_kara )" crlf))
)

;"pine","V","1.lAlasA_karanA"
;A cat was pining for her kittens.
;
