
(defrule mad0
(declare (salience 5000))
(id-root ?id mad)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAgala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mad.clp 	mad0   "  ?id "  pAgala )" crlf))
)

(defrule mad1
(declare (salience 4900))
(id-root ?id mad)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAgala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mad.clp 	mad1   "  ?id "  pAgala )" crlf))
)

;"mad","Adj","1.pAgala"
;He went completely mad.
;--"2.uwwejiwa"
;On hearing the arrival of her father, she ran  like  mad.
;--"gussA"
;The Principal was mad at the children for playing the practical joke on the new teaher.
;
;
