
(defrule witness0
(declare (salience 5000))
(id-root ?id witness)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAkRI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  witness.clp 	witness0   "  ?id "  sAkRI )" crlf))
)

(defrule witness1
(declare (salience 4900))
(id-root ?id witness)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  witness.clp 	witness1   "  ?id "  xeKa )" crlf))
)

;"witness","VTI","1.xeKanA"
;You have to witness the scene.
;
;