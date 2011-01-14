
(defrule overestimate0
(declare (salience 5000))
(id-root ?id overestimate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jyAxA_xAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overestimate.clp 	overestimate0   "  ?id "  jyAxA_xAma )" crlf))
)

;"overestimate","N","1.jyAxA_xAma"
;We are expecting fifty people but that may be an overestimate
;
(defrule overestimate1
(declare (salience 4900))
(id-root ?id overestimate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jyAxA_xAma_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overestimate.clp 	overestimate1   "  ?id "  jyAxA_xAma_lagA )" crlf))
)

;"overestimate","V","1.jyAxA_xAma_lagAnA"
;I overestimated the amount of provisions we'd need for the month
;
