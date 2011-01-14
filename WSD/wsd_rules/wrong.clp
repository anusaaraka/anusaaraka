
(defrule wrong0
(declare (salience 5000))
(id-root ?id wrong)
?mng <-(meaning_to_be_decided ?id)
(or (id-cat_coarse ?id adjective)(subject-subject_samAnAXikaraNa  ?sub  ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrong.clp 	wrong0   "  ?id "  galawa )" crlf))
)

;"wrong","Adj","1.galawa"
;Her mathematical calculations are wrong.
;
(defrule wrong1
(declare (salience 4900))
(id-root ?id wrong)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrong.clp 	wrong1   "  ?id "  galawapUrNa )" crlf))
)

;"wrong","Adv","1.galawapUrNa"
;He worked the sum all wrong.
;
(defrule wrong2
(declare (salience 4800))
(id-root ?id wrong)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrong.clp 	wrong2   "  ?id "  galawI )" crlf))
)

;"wrong","N","1.galawI/wruti"
;Noble men never do wrong.
;--"2.anyAya"
;The lady complained of the wrongs she had suffered at her in-laws.
;
(defrule wrong3
(declare (salience 4700))
(id-root ?id wrong)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anyAya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrong.clp 	wrong3   "  ?id "  anyAya_kara )" crlf))
)

;"wrong","VT","1.anyAya_karanA"
;He felt deeply wronged by the charges.
;
