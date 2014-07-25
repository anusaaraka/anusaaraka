;She promised me something. Mary promised the instructor to take that course. modified by Sukhada (12-9-11)
(defrule promise0
(declare (salience 5000))
(id-root ?id promise)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-object ?id ?obj) (kriyA-object_1 ?id ?obj))
(or (id-root ?obj ?str&:(gdbm_lookup_p "eng-animate-list.gdbm" ?str)) (id-root ?obj ?str&:(gdbm_lookup_p "animate.gdbm" ?str )))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAxA_kara))
(assert (kriyA_id-object_viBakwi ?id se))
(assert (kriyA_id-object1_viBakwi ?id se))
(assert (kriyA_id-object2_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  promise.clp 	promise0   "  ?id "  vAxA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  promise.clp   promise0   "  ?id " se )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object1_viBakwi   " ?*wsd_dir* "  promise.clp   promise0   "  ?id " se )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object2_viBakwi   " ?*wsd_dir* "  promise.clp   promise0   "  ?id " kA )" crlf)
)
)

;+++ Re-modified by Sukhada 2/4/14 --- added 'root as show'
;@@@ Added by Sonam Gupta MTech IT Banasthali 7-2-2014
;Her work shows great promise. [Camb]
;उसका काम अच्छी प्रतिभा की सम्भावना है .
(defrule promise1
(declare (salience 5000))
(id-root ?id promise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?k ?id)
(id-root ?k show) ;added by Sukhada 2/4/14
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiBA_kI_samBAvanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  promise.clp 	promise1  "  ?id " 	prawiBA_kI_samBAvanA )" crlf)))



;@@@ Added by Sonam Gupta MTech IT Banasthali 7-2-2014
;Her early novels were full of promise.  [M-W]
;उसकी पिछली नोवेल्स में सफलता की सम्भावना थी .
(defrule promise2
(declare (salience 5000))
(id-root ?id promise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-root ?id1 full|has|hold)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPalawA_kI_samBAvanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  promise.clp 	promise2  "  ?id " 	saPalawA_kI_samBAvanA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 7-2-2014
;The new drug holds promise. [M-W]
;नयी दवा में सफल चिकित्सा की सम्भावना है .
(defrule promise3
(declare (salience 5000))
(id-root ?id promise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(kriyA-subject  ?id1 ?id2)
(id-root ?id1 has|hold)
(id-root ?id2 medicine|drug|treatment|medication)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPala_cikiwsA_kI_samBAvanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  promise.clp 	promise3  "  ?id " 	saPala_cikiwsA_kI_samBAvanA )" crlf))
)
;------------------------------ Default rules --------------------------------
;@@@ Added by Shirisha Manju 2/4/14 Suggested by Sukhada
;Gopal remembered his promise and told his wife about it. 
;gopAla ne usakA vAxA yAxa kiyA Ora isake bAre meM usakI pawnI ko bawAyA.
(defrule promise_default_noun
(id-root ?id promise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  promise.clp  promise_default_noun   "  ?id "  vAxA )" crlf)
)
)

;@@@ Added by Shirisha Manju 2/4/14  Suggested by Sukhada
;The government have promised that they will reduce taxes. 
;sarakAra vAxA_kara cukI hE ki ve kara kama kareMge.
(defrule promise_default_verb
(id-root ?id promise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  promise.clp  promise_default_verb   "  ?id "  vAxA_kara )" crlf)
)
)

