
(defrule cap0
(declare (salience 5000))
(id-root ?id cap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id topI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cap.clp 	cap0   "  ?id "  topI )" crlf))
)

(defrule cap1
(declare (salience 4900))
(id-root ?id cap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dakkana_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cap.clp 	cap1   "  ?id "  Dakkana_lagA )" crlf))
)

;"cap","VT","1.Dakkana_lagAnA"
;The bottles were capped tightly.
;
;