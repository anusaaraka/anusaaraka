
(defrule caution0
(declare (salience 5000))
(id-root ?id caution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cewAvanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  caution.clp 	caution0   "  ?id "  cewAvanI )" crlf))
)

(defrule caution1
(declare (salience 4900))
(id-root ?id caution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAvaXAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  caution.clp 	caution1   "  ?id "  sAvaXAna_kara )" crlf))
)

;"caution","V","1.sAvaXAna_karanA"
;His father cautioned him from spending money lavishly.
;
;