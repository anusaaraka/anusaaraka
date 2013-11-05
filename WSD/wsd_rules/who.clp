
(defrule who0
(declare (salience 5000))
(id-root ?id who)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  who.clp 	who0   "  ?id "  kOna )" crlf))
)

(defrule who1
(declare (salience 4900))
(id-root ?id who)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  who.clp 	who1   "  ?id "  kOna )" crlf))
)

;I did not know who to ask
(defrule who2
(declare (salience 4800))
(id-root ?id who)
?mng <-(meaning_to_be_decided ?id)
(subject_question_wh_type )
;(praSnAwmaka_vAkya      )
;;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-root ?id1  ?)
(kriyA-subject ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  who.clp 	who2   "  ?id "  kOna )" crlf))
)

(defrule who3
(declare (salience 4700))
(id-root ?id who)
?mng <-(meaning_to_be_decided ?id)
(wh_question)
;(praSnAwmaka_vAkya      )
(id-cat_coarse ?id wh-pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  who.clp 	who3   "  ?id "  kOna )" crlf))
)

 (defrule who4
(declare (salience 4600))
(id-root ?id who)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-jo_samAnAXikaraNa ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  who.clp    who4   "  ?id "  jo )" crlf))
)
 

;"who","Pron","1.kOna"
;Who is the woman in the red coat?.
;
