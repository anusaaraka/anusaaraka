
(defrule row0
(declare (salience 5000))
(id-root ?id row)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  row.clp 	row0   "  ?id "  JagadZA )" crlf))
)

;"row","N","1.JagadZA"
;They had a row again.
;--"2.paMkwi"
;She has arranged all her books in rows.   
;
(defrule row1
(declare (salience 4900))
(id-root ?id row)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  row.clp 	row1   "  ?id "  Ke )" crlf))
)

;"row","VT","1.KenA"
;He rowed us across the hussain sagar lake.
;--"2.JagadZanA"
;She's being rowing again over money with her husband.
;
