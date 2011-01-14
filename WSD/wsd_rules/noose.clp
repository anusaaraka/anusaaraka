
(defrule noose0
(declare (salience 5000))
(id-root ?id noose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PanxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  noose.clp 	noose0   "  ?id "  PanxA )" crlf))
)

;"noose","N","1.PanxA"
;The hunter kept the noose ready for the prey.
;
(defrule noose1
(declare (salience 4900))
(id-root ?id noose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PanxA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  noose.clp 	noose1   "  ?id "  PanxA_lagA )" crlf))
)

;"noose","VT","1.PanxA_lagAnA"
;The mountaineer tries to put the noose on the cliff.
;
