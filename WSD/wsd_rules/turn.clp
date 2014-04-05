
(defrule turn0
(declare (salience 5000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nOkarI_se_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn0  "  ?id "  " ?id1 "  nOkarI_se_nikAla  )" crlf))
)


(defrule turn1
(declare (salience 4800))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id  ?id1)
(id-cat_coarse ?id verb)
(id-root ?id1 proposal) ;$$$ Corrected by Roja
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TukarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn1  "  ?id "  " ?id1 "  TukarA  )" crlf))
)



;Added by Amba
(defrule turn2
(declare (salience 4700))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 inakAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn2  "  ?id "  " ?id1 "  inakAra_kara  )" crlf))
)




(defrule turn3
(declare (salience 4600))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn3  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)



(defrule turn4
(declare (salience 4400))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ulata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn4  "  ?id "  " ?id1 "  ulata  )" crlf))
)



(defrule turn5
(declare (salience 4200))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 upasWiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn5  "  ?id "  " ?id1 "  upasWiwa_ho  )" crlf))
)


;The rule can be deleted as it has been taken care of in rule8 (Meena 30.4.10).
; Added by human
(defrule turn6
(declare (salience 4000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 left)
(viSeRya-viSeRaNa ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn6   "  ?id "  moda )" crlf))
)

;The milk has turned sour
(defrule turn7
(declare (salience 3900))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 sour|red|blue|green)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn7   "  ?id "  ho )" crlf))
)



;Modified by Meena(25.1.11) ; added (conjunction-components  ?conj  ?id2 ?id) for the cases like the example below.
;The path has many twists and turns. 
;Modified by Meena(30.4.10)
;Go straight and take a right turn . 
(defrule turn8
(declare (salience 3500))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa ?id ?id1)(viSeRya-det_viSeRaNa ?id ?id1)(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)(conjunction-components  ?conj  ?id ?id2)) ;Interchanged conjunction components ids  by Roja(15-02-11)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn8   "  ?id "  modZa )" crlf))
)




(defrule turn9
(declare (salience 3400))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn9   "  ?id "  GumA )" crlf))
)

(defrule turn10
(declare (salience 3300))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn10   "  ?id "  muda )" crlf))
)

;"turn","VTI","1.GumAnA"
;You turn the wheel.
;
;


;Salience reduced by Meena(30.4.10)
;Added by Veena Bagga (01-01-2010)
(defrule turn11
;(declare (salience 3500))
(id-root ?id turn)
;(Any)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn11 " ?id " bArI)" crlf))
)
;She is waiting for her turn .


;Added by Roja(18-09-10)
;The lights in the street turn on only during night.
(defrule turn12
(declare (salience 4000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga  ?id  ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp  turn12  "  ?id "  " ?id1 "  jala)" crlf))
)
