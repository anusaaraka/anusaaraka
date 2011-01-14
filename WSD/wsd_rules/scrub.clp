
(defrule scrub0
(declare (salience 5000))
(id-root ?id scrub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAdZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scrub.clp 	scrub0   "  ?id "  JAdZI )" crlf))
)

;"scrub","N","1.JAdZI"
;In our compound we have many ornamental scrub.
;
(defrule scrub1
(declare (salience 4900))
(id-root ?id scrub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArjana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scrub.clp 	scrub1   "  ?id "  mArjana_kara )" crlf))
)

;"scrub","V","1.mArjana_karanA"
;Servent was scrubbing the floor with soap water.
;
