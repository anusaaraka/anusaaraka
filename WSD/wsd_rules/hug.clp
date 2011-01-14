
(defrule hug0
(declare (salience 5000))
(id-root ?id hug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AliMgana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hug.clp 	hug0   "  ?id "  AliMgana )" crlf))
)

;"hug","N","1.AliMgana"
;miwra ke 'hug se suxAmA ke AzKoM meM AsUz Bara Ae.
;
(defrule hug1
(declare (salience 4900))
(id-root ?id hug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIne_se_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hug.clp 	hug1   "  ?id "  sIne_se_lagA )" crlf))
)

;"hug","V","1.sIne_se_lagAnA"
;kqRNa apane miwra ko 'hug' kiyA.
;
