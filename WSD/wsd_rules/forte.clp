
(defrule forte0
(declare (salience 5000))
(id-root ?id forte)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZora_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forte.clp 	forte0   "  ?id "  jZora_se )" crlf))
)

;"forte","Adv","1.jZora_se"
;He played the music forte.
;
(defrule forte1
(declare (salience 4900))
(id-root ?id forte)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nEpuNya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forte.clp 	forte1   "  ?id "  nEpuNya )" crlf))
)

;"forte","N","1.nEpuNya"
;Mathematics was never my forte.
;Hard work should be every body's forte.
;
