
(defrule workshop0
(declare (salience 5000))
(id-root ?id workshop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 karate)
(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryaSAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  workshop.clp 	workshop0   "  ?id "  kAryaSAlA )" crlf))
)

(defrule workshop1
(declare (salience 4900))
(id-root ?id workshop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraKAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  workshop.clp 	workshop1   "  ?id "  kAraKAnA )" crlf))
)

;default_sense && category=noun	kAraKAnA{marammawa_kA}	0
;"workshop","N","1.kAraKAnA{marammawa_kA}"
;I have given my mixer in the workshop.
;
;
