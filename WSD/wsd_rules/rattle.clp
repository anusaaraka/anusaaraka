
(defrule rattle0
(declare (salience 5000))
(id-root ?id rattle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rattling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id suKaxAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rattle.clp  	rattle0   "  ?id "  suKaxAyI )" crlf))
)

;"rattling","Adj","1.suKaxAyI"
;There is a rattling breeze near the sea shore.
;
(defrule rattle1
(declare (salience 4900))
(id-root ?id rattle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZaKadZa_kI_AvAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rattle.clp 	rattle1   "  ?id "  KadZaKadZa_kI_AvAjZa )" crlf))
)

;"rattle","N","1.KadZaKadZa_kI_AvAjZa"
;The rattle of bottles was being heard from a milk man's van. 
;
(defrule rattle2
(declare (salience 4800))
(id-root ?id rattle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZaKadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rattle.clp 	rattle2   "  ?id "  KadZaKadZA )" crlf))
)

;"rattle","VTI","1.KadZaKadZAnA"
;Doors && windows began to rattle when the strong wind blew.
;--"2.jalxI-jalxI_kahanA"
;She rattled on for an hour about her excursion.  
;
