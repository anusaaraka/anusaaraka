
(defrule tomorrow0
(declare (salience 5000))
(id-root ?id tomorrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tomorrow.clp 	tomorrow0   "  ?id "  kala )" crlf))
)

;"tomorrow","Adv","1.kala{AnevAlA}"
;I will play badminton tomorrow.
;
(defrule tomorrow1
(declare (salience 4900))
(id-root ?id tomorrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tomorrow.clp 	tomorrow1   "  ?id "  kala )" crlf))
)

;"tomorrow","N","1.kala{AnevAlA}"
;Tomorrow is Monday.
;
