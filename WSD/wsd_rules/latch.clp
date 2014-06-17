
;(defrule latch0
;(declare (salience 5000))
;(id-root ?id latch)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 on)
;(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by ;Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id samaJa));Automatically modified ;'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's ;program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " latch.clp ;latch0 " ?id "  samaJa )" crlf)) 
;)

;(defrule latch1
;(declare (salience 4900))
;(id-root ?id latch)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 on)
;(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by ;Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id samaJa));Automatically modified ;'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's ;program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " latch.clp ;latch1 " ?id "  samaJa )" crlf)) 
;)

;(defrule latch2
;(declare (salience 4800))
;(id-root ?id latch)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 on)
;(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by ;Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id samaJa));Automatically modified ;'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's ;program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " latch.clp ;latch2 " ?id "  samaJa )" crlf)) 
;)

;(defrule latch3
;(declare (salience 4700))
;(id-root ?id latch)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 on)
;(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by ;Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id samaJa));Automatically modified ;'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's ;program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " latch.clp ;latch3 " ?id "  samaJa )" crlf)) 
;)

;$$$   --- Modified by Nandini(7-4-14)
;Please latch the door before you go to bed.[Add old clp hindi sentence]
;kqpayA sone_ke_liye jAne se purva xaravAje kI citakanI lagAie. [Add Hindi-sentence]
(defrule latch4
(declare (salience 4600))
(id-root ?id latch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id citakanI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  latch.clp 	latch4   "  ?id "  citakanI_lagA )" crlf))
)

;@@@   --- Added by Nandini(7-4-14)
;You must lift the latch before you can open the gate. [shiksharWI-kosha]
;xvAra Kolane se  pahale Apako citakanI uTAnI cAhie.
(defrule latch5
(declare (salience 4650))
(id-root ?id latch)
?mng <-(meaning_to_be_decided ?id)
(kriya-object ?id1 ?id)
(id-root ?id1 lift)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id citakanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  latch.clp 	latch5   "  ?id "  citakanI )" crlf))
)

;@@@   --- Added by Nandini(7-4-14)
;She listened for his key in the latch.[OALD]
;usane  KatakexAra_wAle meM usakI cAbI ki AvAja sunI.
(defrule latch6
(declare (salience 5050))
(id-root ?id latch)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id1 ?id)
(id-root ?id1 listen)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KatakexAra_wAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  latch.clp 	latch6   "  ?id "  KatakexAra_wAlA )" crlf))
)


;@@@   --- Added by Nandini(7-4-14)
;He latched on to the truth. [OALD]
;vaha saccAI ko samaJa gayA.
(defrule latch7
(declare (salience 5050))
(id-root ?id latch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id2)
(id-root ?id2 truth)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " latch.clp	latch7  "  ?id "  " ?id1 "  samaJa_jA )" crlf))
)

;@@@   --- Added by Nandini(7-4-14)
;It was a difficult concept to grasp, but I soon latched on. [OALD]
;yaha samaJane ke liye eka kaTina safkalpanA WI, paranwu mEMne SIGra samaJa liyA.
(defrule latch8
(declare (salience 4750))
(id-root ?id latch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str)
(test (and (neq (numberp ?str) TRUE) (gdbm_lookup_p "human.gdbm" ?str) TRUE))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " latch.clp	latch8  "  ?id "  " ?id1 "  samaJa_le )" crlf))
)



;default_sense && category=verb	sitakinI lagA	0
;"latch","V","1.sitakinI lagAnA"
;Please latch the door before you go to bed.
;
;
