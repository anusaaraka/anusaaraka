
(defrule ray0
(declare (salience 5000))
(id-root ?id ray)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ray.clp 	ray0   "  ?id "  kiraNa )" crlf))
)

(defrule ray1
(declare (salience 4900))
(id-root ?id ray)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiraNa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ray.clp 	ray1   "  ?id "  kiraNa_nikAla )" crlf))
)

;"ray","VI","1.kiraNa_nikAlanA"
;A ray of light travels straight.
;
;