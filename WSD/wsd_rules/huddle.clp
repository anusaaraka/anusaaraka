
(defrule huddle0
(declare (salience 5000))
(id-root ?id huddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id huddled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id CallexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  huddle.clp  	huddle0   "  ?id "  CallexAra )" crlf))
)

;"huddled","Adj","1.CallexAra"
;eka BiKArI'huddled'peda ke nIce so rahA hE
;
;
(defrule huddle1
(declare (salience 4900))
(id-root ?id huddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-together_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 simata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " huddle.clp	huddle1  "  ?id "  " ?id1 "  simata_jA  )" crlf))
)

(defrule huddle2
(declare (salience 4800))
(id-root ?id huddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 simata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " huddle.clp	huddle2  "  ?id "  " ?id1 "  simata_jA  )" crlf))
)

(defrule huddle3
(declare (salience 4700))
(id-root ?id huddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIdZa_lagAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  huddle.clp 	huddle3   "  ?id "  BIdZa_lagAnA )" crlf))
)

;"huddle","N","1.BIdZa lagAnA"
;newA ko xeKane ke lie vahAz 'huddle' hE.
;
;
