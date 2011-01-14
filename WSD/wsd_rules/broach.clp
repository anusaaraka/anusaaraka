
(defrule broach0
(declare (salience 5000))
(id-root ?id broach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upasWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broach.clp 	broach0   "  ?id "  upasWApiwa_kara )" crlf))
)

;"broach","V","1.upasWApiwa_kara"
(defrule broach1
(declare (salience 4900))
(id-root ?id broach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carcA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broach.clp 	broach1   "  ?id "  carcA_kara )" crlf))
)

;"broach","VT","1.carcA_karanA"
;He decided to broach the isuue before the evening was over.
;
