
(defrule predicate0
(declare (salience 5000))
(id-root ?id predicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viXeya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  predicate.clp 	predicate0   "  ?id "  viXeya )" crlf))
)

;"predicate","N","1.viXeya"
;Predicate is must in every sentence.
;
(defrule predicate1
(declare (salience 4900))
(id-root ?id predicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niScayapUrvaka_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  predicate.clp 	predicate1   "  ?id "  niScayapUrvaka_kaha )" crlf))
)

;"predicate","V","1.niScayapUrvaka_kahanA"
;seniors always predicate their juniors but they become careless.
;
