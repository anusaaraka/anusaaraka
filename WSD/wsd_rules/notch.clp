
(defrule notch0
(declare (salience 5000))
(id-root ?id notch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  notch.clp 	notch0   "  ?id "  KAzcA )" crlf))
)

;"notch","N","1.KAzcA"
;There were four notches in the handle of his revolver.
;
(defrule notch1
(declare (salience 4900))
(id-root ?id notch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAzcA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  notch.clp 	notch1   "  ?id "  KAzcA_banA )" crlf))
)

;"notch","VT","1.KAzcA_banAnA"
;He made a notch on a stick.
;
