
(defrule clone0
(declare (salience 5000))
(id-root ?id clone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hUbahU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clone.clp 	clone0   "  ?id "  hUbahU )" crlf))
)

;"clone","N","1.hUbahU"
;Dolly is the first clone of sheep.
;
(defrule clone1
(declare (salience 4900))
(id-root ?id clone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hUbahU_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clone.clp 	clone1   "  ?id "  hUbahU_banA )" crlf))
)

;"clone","V","1.hUbahU_banAnA"
;Science has advanced enough to clone genetically.
;
