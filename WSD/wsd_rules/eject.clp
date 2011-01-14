
(defrule eject0
(declare (salience 5000))
(id-root ?id eject)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balapUrvaka_bAhara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eject.clp 	eject0   "  ?id "  balapUrvaka_bAhara_kara )" crlf))
)

(defrule eject1
(declare (salience 4900))
(id-root ?id eject)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balapUrvaka_bAhara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eject.clp 	eject1   "  ?id "  balapUrvaka_bAhara_ho )" crlf))
)

;"eject","VT","1.balapUrvaka_bAhara_honA[karanA]"
;He managed to eject from the crashing helicopter.
;
