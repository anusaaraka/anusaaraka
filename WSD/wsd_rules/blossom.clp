
(defrule blossom0
(declare (salience 5000))
(id-root ?id blossom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blossom.clp 	blossom0   "  ?id "  PUla )" crlf))
)

;"blossom","N","1.PUla/puRpa"
(defrule blossom1
(declare (salience 4900))
(id-root ?id blossom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blossom.clp 	blossom1   "  ?id "  PUla )" crlf))
)

;"blossom","VI","1.PUlanA/KilanA/samqxXa_honA/PalanA"
;Youth blossomed into maturity
;
