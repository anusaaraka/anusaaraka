
(defrule occasion0
(declare (salience 5000))
(id-root ?id occasion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occasion.clp 	occasion0   "  ?id "  avasara )" crlf))
)

;"occasion","N","1.avasara/prasaMga"
;On rare occassions, she dressed up.
;--"2.mOkA"
;I don't get much occasion to speak German.
;
(defrule occasion1
(declare (salience 4900))
(id-root ?id occasion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nimiwwamAwra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occasion.clp 	occasion1   "  ?id "  nimiwwamAwra_ho )" crlf))
)

;"occasion","V","1.nimiwwamAwra_honA"
;The child's remarks occasioned lots of mirth. 
;
