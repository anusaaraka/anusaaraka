
(defrule tree0
(declare (salience 5000))
(id-root ?id tree)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id treed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vqkRoM_se_pUriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tree.clp  	tree0   "  ?id "  vqkRoM_se_pUriwa )" crlf))
)

;"treed","Adj","1.vqkRoM_se_pUriwa"
;A treed area is a feast to the eyes.
;
(defrule tree1
(declare (salience 4900))
(id-root ?id tree)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tree.clp 	tree1   "  ?id "  peda )" crlf))
)

;"tree","N","1.peda"
;Trees give shade.
;
;