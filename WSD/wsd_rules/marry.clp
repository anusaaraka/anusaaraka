
(defrule marry0
(declare (salience 5000))
(id-root ?id marry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id married )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vivAhiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  marry.clp  	marry0   "  ?id "  vivAhiwa )" crlf))
)

;"married","Adj","1.vivAhiwa"
;Rachel && David are getting married on wednesday.
;
(defrule marry1
(declare (salience 4900))
(id-root ?id marry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vivAha_kara))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  marry.clp 	marry1   "  ?id "  vivAha_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  marry.clp     marry1   "  ?id " se )" crlf)
)
)

;default_sense && category=verb	vivAha kara	0
;"marry","V","1.vivAha karanA"
;Her uncle forced her to marry a rich person.
;She has been married for 20 years.
;
;
