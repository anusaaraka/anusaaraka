
(defrule vindicate0
(declare (salience 5000))
(id-root ?id vindicate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nyAya_sixXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vindicate.clp 	vindicate0   "  ?id "  nyAya_sixXa_kara )" crlf))
)

(defrule vindicate1
(declare (salience 4900))
(id-root ?id vindicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nyAya_sixXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vindicate.clp 	vindicate1   "  ?id "  nyAya_sixXa_kara )" crlf))
)

;"vindicate","VT","1.nyAya_sixXa_honA[karanA]"
;He was vindicated by the court.
;
