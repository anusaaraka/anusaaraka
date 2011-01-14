
(defrule mutineer0
(declare (salience 5000))
(id-root ?id mutineer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixrohI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mutineer.clp 	mutineer0   "  ?id "  vixrohI )" crlf))
)

;"mutineer","N","1.vixrohI"
(defrule mutineer1
(declare (salience 4900))
(id-root ?id mutineer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balavA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mutineer.clp 	mutineer1   "  ?id "  balavA_kara )" crlf))
)

;"mutineer","VI","1.balavA_karanA"
