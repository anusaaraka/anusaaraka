
(defrule import0
(declare (salience 5000))
(id-root ?id import)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AyAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  import.clp 	import0   "  ?id "  AyAwa_kara )" crlf))
)

(defrule import1
(declare (salience 4900))
(id-root ?id import)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AyAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  import.clp 	import1   "  ?id "  AyAwa_kara )" crlf))
)

;"import","V","1.AyAwa karanA"
;Technical equipments imported from abroad.
;
;