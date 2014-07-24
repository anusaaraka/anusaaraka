
;given_word=burning && category=adjective	$jalawA_huA)

(defrule burn0
(declare (salience 5000))
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id burning )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xAhaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  burn.clp  	burn0   "  ?id "  xAhaka )" crlf))
)

;"burning","Adj","1.xAhaka"
;A burning fever
;--"2.jvalanwa"
;Burning issues of the day
;--"3.jalAnevAlA"
;Coal-burning (or wood-burning) stoves
;--"4.jalawA_huA"
;Begged for water to soothe his burning throat
;
;
(defrule burn1
(declare (salience 4900))
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalA_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " burn.clp burn1 " ?id "  jalA_xe )" crlf)) 
)

(defrule burn2
(declare (salience 4800))
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jalA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burn.clp	burn2  "  ?id "  " ?id1 "  jalA_xe  )" crlf))
)

;note:rule3 has been deleted by Garima Singh as it was similar to rule4.

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)25-jan-2014
;changed the meaning from 'jala_jA' to 'jalA_xe'
(defrule burn4
(declare (salience 4600))
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jalA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burn.clp	burn4  "  ?id "  " ?id1 "  jalA_xe  )" crlf))
)

(defrule burn5
(declare (salience 4500))
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BadZakA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " burn.clp burn5 " ?id "  BadZakA )" crlf)) 
)

(defrule burn6
(declare (salience 4400))
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BadZakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burn.clp	burn6  "  ?id "  " ?id1 "  BadZakA  )" crlf))
)




;$$$ Modified by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)25-jan-2014
;changed the meaning from 'jalA' to 'jalA_xe'
(defrule burn11
(declare (salience 4000));salience changed by Garima from 3900 to 4000
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burn.clp 	burn11   "  ?id "  jalA_xe )" crlf)
)
)

;"burn","VT","1.jalAnA"
;They burned the house && his diaries
;The sun burned his face
;She was burning with anger
;Burn garbage
;Witches were burned in Salem
;He has money to burn
;Burn off calories through vigorous exercise
;The iron burnt a hole in my dress
;

;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)25-jan-2014
;The cigarette burned a hole in the carpet.
;सिगरेट ने कालीन में जला कर छेद कर दिया . 
(defrule burn12
(declare (salience 4000))
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?obj)
(id-word ?obj hole)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?obj jalA_kara_Cexa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burn.clp	burn12  "  ?id "  " ?obj "  jalA_kara_Cexa_kara_xe  )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)25-jan-2014
;The house was burnt to the ground.
;मकान जल कर नष्ट हो गया था
(defrule burn13
(declare (salience 4500))
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-word ?id1 ground)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jala_kara_pUrI_waraha_se_naRta_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burn.clp	burn13  "  ?id "  " ?id1 "  jala_kara_pUrI_waraha_se_naRta_ho  )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)25-jan-2014
;Witches were burned in Salem.
;जादूगरनीयों को सलेम में जलाया जाता था . 
(defrule burn14
(declare (salience 4000))
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(kriyA-karma  ?id ?sub)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burn.clp 	burn14   "  ?id "  jalA )" crlf))
)



;***********************DEFAULT RULES**********************************



(defrule burn7
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalane_kA_GAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burn.clp 	burn7   "  ?id "  jalane_kA_GAva )" crlf))
)

;"burn","N","1.jalane_kA_GAva"
;He received severe burns in the fire.
;


(defrule burn8
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id burn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burn.clp 	burn8   "  ?id "  jala )" crlf))
)


;(defrule burn9
;(declare (salience 0));salience reduced by Garima Singh
;(id-root ?id burn)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun )
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id jala))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burn.clp 	burn9   "  ?id "  jala )" crlf))
;)

;(defrule burn10
;(declare (salience 0));salience reduced by Garima Singh
;(id-root ?id burn)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adjective )
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id jala))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burn.clp 	burn10   "  ?id "  jala )" crlf))
;)

;"burn","VI","1.jalanA"
;Maple wood burns well
;She was burning with anger
;My eyes are burning
;

