
(defrule slight0
(declare (salience 5000))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id slighting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wiraskArapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  slight.clp  	slight0   "  ?id "  wiraskArapUrNa )" crlf))
)

;"slighting","Adj","1.wiraskArapUrNa"
(defrule slight1
(declare (salience 4900))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xubalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slight.clp 	slight1   "  ?id "  xubalA )" crlf))
)

(defrule slight2
(declare (salience 4800))
(id-root ?id slight)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wucCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slight.clp 	slight2   "  ?id "  wucCa )" crlf))
)

;"slight","Adj","1.wucCa"
;Do not speak slight language with me.
;
;