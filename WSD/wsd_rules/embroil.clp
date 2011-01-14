
(defrule embroil0
(declare (salience 5000))
(id-root ?id embroil)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  embroil.clp 	embroil0   "  ?id "  ulaJA )" crlf))
)

(defrule embroil1
(declare (salience 4900))
(id-root ?id embroil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  embroil.clp 	embroil1   "  ?id "  ulaJa )" crlf))
)

;"embroil","VT","1.ulaJanA[ulaJAnA]"
;He is unnecessarily getting embroiled in their conversations.
;
