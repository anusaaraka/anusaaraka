
(defrule flail0
(declare (salience 5000))
(id-root ?id flail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUsala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flail.clp 	flail0   "  ?id "  mUsala )" crlf))
)

;"flail","N","1.mUsala"
;Flail is used to separate chaff from grain.
;
(defrule flail1
(declare (salience 4900))
(id-root ?id flail)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZora_se_hilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flail.clp 	flail1   "  ?id "  jZora_se_hilA )" crlf))
)

(defrule flail2
(declare (salience 4800))
(id-root ?id flail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZora_se_hila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flail.clp 	flail2   "  ?id "  jZora_se_hila )" crlf))
)

;"flail","V","1.jZora_se_hilanA[hilAnA]"
;The child was flailing && crying helplessly after he had wet himself.
;
