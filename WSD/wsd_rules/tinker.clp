
(defrule tinker0
(declare (salience 5000))
(id-root ?id tinker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaTerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tinker.clp 	tinker0   "  ?id "  TaTerA )" crlf))
)

;"tinker","N","1.TaTerA"
;He is a tinker && does a good job .
;
(defrule tinker1
(declare (salience 4900))
(id-root ?id tinker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaccA_kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tinker.clp 	tinker1   "  ?id "  kaccA_kAma_kara )" crlf))
)

;"tinker","VT","1.kaccA_kAma_karanA"
;He likes tinkering with electrical appliances.
;
