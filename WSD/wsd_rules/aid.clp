
(defrule aid0
(declare (salience 5000))
(id-root ?id aid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aid.clp 	aid0   "  ?id "  sahAyawA )" crlf))
)

(defrule aid1
(declare (salience 4900))
(id-root ?id aid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maxaxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aid.clp 	aid1   "  ?id "  maxaxa_kara )" crlf))
)

;"aid","VT","1.maxaxa_karanA"
;He was accused of aiding the criminal.
;
;