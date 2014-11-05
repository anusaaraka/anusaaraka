;Modified by Meena(30.9.10)
;"moving","Adj","1.hqxaya sparSI"
;The teacher gave a moving talk during her fare well.
;I find some of Brahms's music deeply moving .
;She told me a very moving story . 
(defrule move0
;(declare (salience 5000))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id moving )
(or(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id)(viSeRya-viSeRaNa   ?id1 ?id))
(id-cat_coarse ?id1 noun);Added by Manju to exclude examples like :  Moving beyond the intellect, I therefore soar high in the vast expanse of the Gita on the twin wings of faith and experimentation. Suggested by Chaitanya Sir (16-08-13)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hqxaya_sparSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  move.clp  	move0   "  ?id "  hqxaya_sparSI )" crlf))
)


;Modified by Nandini(2-12-13)
;This house is so compact that we are moving in for other.
(defrule move1
;(declare (salience 4900))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(or(kriyA-upasarga ?id ?id1)(kriyA-in_saMbanXI  ?id ?))
(kriyA-subject ?id ?sub)
(id-root ?sub ?str&:(and (not(numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))) ;$$$ Added this and above condition by Roja(26-05-14).Suggested by Chaitanya Sir. Counter Ex: Even when we are sleeping, air moves into and out of our lungs and blood flows in arteries and veins.  
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 makAna_meM_Akara_rahane_laga))
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gara_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move1  "  ?id "  " ?id1 "  makAna_meM_Akara_rahane_laga  )" crlf))
)

;@@@ Added by Nandini (2-12-13)
;The police moved in on the terrorists.
;pulIsa ne AwafkavAxiyoM ko hatAyA.
(defrule move1-a
;(declare (salience 4950))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga  ?id ?id1)
(kriyA-subject  ?id ?id2)
(id-word ?id2 police)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move1-a  "  ?id "  " ?id1 "  hatA )" crlf))
)

;
(defrule move2
;(declare (salience 4800))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move2  "  ?id "  " ?id1 "  cala  )" crlf))
)

;English and Hindi traslation added by Nandini(2-12-13)
;The bus driver asked them to move along.[oxford advanced learner's dictionary]
(defrule move3
;(declare (salience 4600))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(kriyA-vAkyakarma  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move3  "  ?id "  " ?id1 "  Age_baDZa  )" crlf))
)


(defrule move4
(declare (salience 4400))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAnAMwara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move4  "  ?id "  " ?id1 "  sWAnAMwara_kara  )" crlf))
)



(defrule move5
(declare (salience 4200))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praswAva_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move5  "  ?id "  " ?id1 "  praswAva_raKa  )" crlf))
)



;(defrule move10
;;(declare (salience 4000))
;(id-root ?id move)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 in)
;(kriyA-upasarga ?id ?id1)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 me_A))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move10  "  ?id "  " ?id1 "  me_A  )" crlf))
;)



(defrule move6
(declare (salience 3800))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yAwrA_SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move6  "  ?id "  " ?id1 "  yAwrA_SurU_kara  )" crlf))
)



(defrule move7
(declare (salience 3600))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 viRaya_parivarwana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move7  "  ?id "  " ?id1 "  viRaya_parivarwana_kara  )" crlf))
)


;Modified by Meena(30.9.10)
;Find out everything you need to know about moving out . 
;Her landlord has given her a week to move out .
(defrule move8
;(declare (salience 3400))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id  move|moving)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 purAnA_Gara_CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move8   "  ?id "  " ?id1 "  purAnA_Gara_CodZa_xe  )" crlf))
)


;Modified by Meena(1.10.10)
;If you move up a bit, Tess can sit next to me.
;There's room for another one if you move up a bit.
(defrule move9
;(declare (salience 3200))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over|up) ;along word remove by Nandini(2-11-13)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kisaka))
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWana_baxal))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move9  "  ?id "  " ?id1 "  Kisaka  )" crlf))
)





(defrule move10
;(declare (salience 2600))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 machine)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  move.clp 	move10   "  ?id "  cala )" crlf))
)



;Added by Meena(30.9.10)
;Galelio was the first scientist to claim that the earth moves around the sun .
(defrule move11
;(declare (salience 2500))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) around)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  move.clp      move11   "  ?id "  GUma )" crlf))
)

;@@@ Added by Nandini(16-12-13)
;Next time I will keep my mouth shut, Rajvir promised, as they moved on.[via-mail]
(defrule move7a
(declare (salience 3700))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-vAkyakarma  ?id2 ?id3)
(id-root ?id3 shut)
(kriyA-samakAlika_kriyA  ?id3 ?id)
;(kriyA-vAkya_viBakwi  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDza_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move7a  "  ?id "  " ?id1 "  Age_baDza_jA  )" crlf))
)



;"move","V","1.calanA/hilanA"
;Please move a while further.
;
(defrule move12
(declare (salience -1))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  move.clp 	move12   "  ?id "  cala )" crlf))
)

;@@@ Added by Nandini (2-11-13)
;There is one star, however, which does not seem to move at all.
(defrule move13
(declare (salience -1))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ? ?id)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calawA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  move.clp 	move13   "  ?id "  calawA_huA )" crlf))
)

;@@@ Added by Nandini (4-1-14)
;They moved to the fermenting room, where the leaves were spread over troughs. [via mail]
;ve ParmentiMga kakRa meM gaye jahAz pawwiyAz  PElAI huI WIM.
(defrule move14
(declare (salience 3560))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-root ?id1 room)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  move.clp 	move14   "  ?id "  jA )" crlf))
)

;default_sense && category=verb	calanA/hila	0

;
;
