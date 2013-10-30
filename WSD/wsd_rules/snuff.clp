
(defrule snuff0
(declare (salience 5000))
(id-root ?id snuff)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 buJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " snuff.clp	snuff0  "  ?id "  " ?id1 "  buJA  )" crlf))
)

(defrule snuff1
(declare (salience 4900))
(id-root ?id snuff)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 buJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " snuff.clp	snuff1  "  ?id "  " ?id1 "  buJA  )" crlf))
)

(defrule snuff2
(declare (salience 4800))
(id-root ?id snuff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nasya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snuff.clp 	snuff2   "  ?id "  nasya )" crlf))
)

;"snuff","N","1.nasya"
;My uncle took a pinch of snuff in the afternoon.
;
(defrule snuff3
(declare (salience 4700))
(id-root ?id snuff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snuff.clp 	snuff3   "  ?id "  buJA )" crlf))
)

;"snuff","V","1.buJAnA"
;As soon as the light came back she snffed the candle.
;
