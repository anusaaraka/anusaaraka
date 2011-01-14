
(defrule extend0
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp 	extend0   "  ?id "  baDZA )" crlf))
)

(defrule extend1
(declare (salience 4900))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp 	extend1   "  ?id "  baDZa )" crlf))
)

;default_sense && category=verb	PElA	0
;"extend","V","1.PElAnA"
;The railway line hasnot yet been extended to the remotest areas in the North-
;East regions.
;--"2.nimaMwraNa_xenA"
;The school extended an invitation to the parents on the occasion of Republic Day
;--"3.baDZAnA"
;The minister has extended his visit for another week.
;
;
