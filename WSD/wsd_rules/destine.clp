
(defrule destine0
(declare (salience 5000))
(id-root ?id destine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-for_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_ganwavya));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " destine.clp destine0 " ?id "  kA_ganwavya )" crlf)) 
)

(defrule destine1
(declare (salience 4900))
(id-root ?id destine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kA_ganwavya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " destine.clp	destine1  "  ?id "  " ?id1 "  kA_ganwavya  )" crlf))
)

(defrule destine2
(declare (salience 4800))
(id-root ?id destine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id destined )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kA_ganwavya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  destine.clp  	destine2   "  ?id "  kA_ganwavya )" crlf))
)

(defrule destine3
(declare (salience 4700))
(id-root ?id destine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id destined )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id niyawavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  destine.clp  	destine3   "  ?id "  niyawavAlA )" crlf))
)

;"destined","Adj","1.niyawavAlA"
;She was destined to become a great pianist
;
;
