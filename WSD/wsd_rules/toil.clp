
(defrule toil0
(declare (salience 5000))
(id-root ?id toil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariSrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toil.clp 	toil0   "  ?id "  pariSrama )" crlf))
)

;"toil","N","1.pariSrama"
;After years of toil he got good results.
;
(defrule toil1
(declare (salience 4900))
(id-root ?id toil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariSrama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toil.clp 	toil1   "  ?id "  pariSrama_kara )" crlf))
)

;"toil","V","1.pariSrama_kara"
;You have to toil to get good results.
;
