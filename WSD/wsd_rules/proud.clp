
(defrule proud0
(declare (salience 5000))
(id-root ?id proud)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBimAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  proud.clp 	proud0   "  ?id "  aBimAnI )" crlf))
)

(defrule proud1
(declare (salience 4900))
(id-root ?id proud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  proud.clp 	proud1   "  ?id "  SAnaxAra )" crlf))
)

;"proud","Adv","1.SAnaxAra"
;The president did us proud at the press.
;
;
