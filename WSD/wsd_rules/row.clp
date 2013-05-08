;Added by Sukhada. (8-2-13)
;Ex. What is the probability of tossing a fair coin twice in a row and getting heads both times? 
(defrule toss_in_a_row
(declare (salience 5000))
(id-root ?id row)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 toss)
(id-root ?id row)
(id-word =(- ?id 2) in)
(kriyA-in_saMbanXI ?id1 ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 2)  lagAwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " row.clp	toss_in_a_row "  ?id "  "  =(- ?id 2) " lagAwAra)   )" crlf))
)



(defrule row0
(declare (salience 3000))
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
