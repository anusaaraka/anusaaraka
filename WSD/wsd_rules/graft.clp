
(defrule graft0
(declare (salience 5000))
(id-root ?id graft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  graft.clp 	graft0   "  ?id "  kalama )" crlf))
)

;"graft","N","1.kalama"
(defrule graft1
(declare (salience 4900))
(id-root ?id graft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  graft.clp 	graft1   "  ?id "  kalama_kara )" crlf))
)

;"graft","V","1.kalama_karanA"
(defrule graft2
(declare (salience 4800))
(id-root ?id graft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalama_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  graft.clp 	graft2   "  ?id "  kalama_lagA )" crlf))
)

;"graft","VT","1.kalama_lagAnA"
