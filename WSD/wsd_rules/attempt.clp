
(defrule attempt0
(declare (salience 5000))
(id-root ?id attempt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attempt.clp 	attempt0   "  ?id "  prayAsa )" crlf))
)

(defrule attempt1
(declare (salience 4900))
(id-root ?id attempt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attempt.clp 	attempt1   "  ?id "  prayAsa_kara )" crlf))
)

;"attempt","VTI","1.prayAsa_karanA"
;The prisoners attempted to escape from the prison.
;
;