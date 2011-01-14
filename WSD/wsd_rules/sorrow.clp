
(defrule sorrow0
(declare (salience 5000))
(id-root ?id sorrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuHKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sorrow.clp 	sorrow0   "  ?id "  xuHKa )" crlf))
)

;"sorrow","N","1.xuHKa/Soka"
;Every one should experience joys && sorrows of life.
;
(defrule sorrow1
(declare (salience 4900))
(id-root ?id sorrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuHKI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sorrow.clp 	sorrow1   "  ?id "  xuHKI_ho )" crlf))
)

;"sorrow","V","1.xuHKI_honA"
;She is sorrowing over his son's death.
;
