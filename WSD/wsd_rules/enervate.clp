
(defrule enervate0
(declare (salience 5000))
(id-root ?id enervate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id enervated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Wake_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  enervate.clp  	enervate0   "  ?id "  Wake_hue )" crlf))
)

;"enervated","Adj","1.Wake_hue{paswa}"
(defrule enervate1
(declare (salience 4900))
(id-root ?id enervate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enervate.clp 	enervate1   "  ?id "  WakA )" crlf))
)

;"enervate","V","1.WakAnA{paswa_karanA}"
