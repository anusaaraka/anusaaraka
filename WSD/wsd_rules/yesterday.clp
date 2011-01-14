
(defrule yesterday0
(declare (salience 5000))
(id-root ?id yesterday)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yesterday.clp 	yesterday0   "  ?id "  kala )" crlf))
)

;"yesterday","Adv","1.kala"
;He came here yesterday.
;
(defrule yesterday1
(declare (salience 4900))
(id-root ?id yesterday)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yesterday.clp 	yesterday1   "  ?id "  kala )" crlf))
)

; changed by Amba, kala works in both the cases.
;default_sense && category=noun	kala_kA_bIwA_xina	0
;"yesterday","N","1.kala_kA_bIwA_xina"
;Yesterday was a holiday.
;
