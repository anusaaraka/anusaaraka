
(defrule weep0
(declare (salience 5000))
(id-root ?id weep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id weeping )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id rowe_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  weep.clp  	weep0   "  ?id "  rowe_hue )" crlf))
)

;"weeping","Adj","1.rowe_hue"
;A weeping baby needs attention.
;
(defrule weep1
(declare (salience 4900))
(id-root ?id weep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roxana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weep.clp 	weep1   "  ?id "  roxana )" crlf))
)

;"weep","N","1.roxana"
;He heard the weep of the solitary reaper.
;
(defrule weep2
(declare (salience 4800))
(id-root ?id weep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ro))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weep.clp 	weep2   "  ?id "  ro )" crlf))
)

;"weep","VI","1.ronA"
;The child weeping for his mother.
;
