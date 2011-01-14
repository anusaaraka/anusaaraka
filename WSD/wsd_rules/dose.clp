
(defrule dose0
(declare (salience 5000))
(id-root ?id dose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KurAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dose.clp 	dose0   "  ?id "  KurAka )" crlf))
)

;"dose","N","1.KurAka"
(defrule dose1
(declare (salience 4900))
(id-root ?id dose)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ORaXi_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dose.clp 	dose1   "  ?id "  ORaXi_xe )" crlf))
)

(defrule dose2
(declare (salience 4800))
(id-root ?id dose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ORaXi_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dose.clp 	dose2   "  ?id "  ORaXi_le )" crlf))
)

;"dose","V","1.ORaXi_lenA[xenA]"
;He dosed himself up with medicine && went to bed 
;
