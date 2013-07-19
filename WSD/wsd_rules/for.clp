;Added by Meena(10.8.11)
;Keep the papers ready for the next time.
;I am warning you for the last time stop talking. 
;I saw him for the first time in Delhi.
(defrule for_the_last_time0
(declare (salience 4750))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) the)
(id-root =(+ ?id 2) ?root)
(id-root =(+ ?id 3) time)
=>
(if (eq ?root first)then
    (assert (affecting_id-affected_ids-wsd_group_root_mng  =(+ ?id 3)  ?id  =(+ ?id 1) =(+ ?id 2) pahalI_bAra))
    (retract ?mng)
    (if ?*debug_flag* then
      (printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " for.clp  for_the_last_time0  " (+ ?id 3) "  " ?id  " "(+ ?id 1) " "(+ ?id 2) "  pahalI_bAra  )" crlf))
) 
(if (eq ?root next)then
    (assert (affecting_id-affected_ids-wsd_group_root_mng =(+ ?id 3) ?id  =(+ ?id 1) =(+ ?id 2) agalI_bAra_ke_liye))
    (retract ?mng)
    (if ?*debug_flag* then
      (printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " for.clp  for_the_last_time0  " (+ ?id 3) "  " ?id  " "(+ ?id 1) " "(+ ?id 2) "  agalI_bAra_ke_liye  )" crlf))
)
(if (eq ?root last)then
    (assert (affecting_id-affected_ids-wsd_group_root_mng =(+ ?id 3)    ?id  =(+ ?id 1) =(+ ?id 2) AKirI_bAra))
    (retract ?mng)
    (if ?*debug_flag* then
      (printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " for.clp  for_the_last_time0  "  (+ ?id 3) "  " ?id " "(+ ?id 1) " "(+ ?id 2) "  AKirI_bAra  )" crlf))
)
)

;Added by Meena(6.8.11)
;I am speaking for everyone in this department. 
(defrule for0
(declare (salience 4700))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id1  ?id2)
(id-root ?id1 speak|talk|say|tell|invite|ask)
(id-root ?id2 everyone|all)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_ora_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp       for0   "  ?id "  kI_ora_se )" crlf))
)



;Added by Meena(8.8.11)
;You will feel better for a good night's sleep.  
(defrule for1
(declare (salience 4700))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id1  ?id2)
(or(kriyA-kriyA_viSeRaNa ?id1  =(+ ?id1 1))(subject-subject_samAnAXikaraNa   ?subj  =(+ ?id1 1)))
(not(id-root =(- ?id 1) right|afraid|good|compulsory|mainly))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp       for1   "  ?id "  ke_bAxa )" crlf))
)



;Modified by Meena(17.8.11)
;Added by Meena(9.8.11)
;This room would look big and airy for a spot of paint.
(defrule for2
(declare (salience 4700))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id1  ?id2)
(id-word ?id2 ?wrd&~me&~us&~him&~her&~them&~you&~meeting&~discussion)
(not(id-cat_coarse ?id1 noun))
(not(id-root ?id1 important|afraid|young|anxious|worried|happy|distress|compulsory|good))      
(subject-subject_samAnAXikaraNa   ?subj   ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp       for2   "  ?id "  ke_bAxa )" crlf))
)



;Added by Meena(8.8.11)
;The weather was warm for the time of year. 
;She is tall for her age. 
;He is not bad for a beginner. 
(defrule for3
(declare (salience 4700))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id1  ?id2)
;(id-root ?id2 time|age|beginner|England|child|man)
(id-root ?id1 warm|tall|bad|responsibility)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_hisAba_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp       for3   "  ?id "  ke_hisAba_se )" crlf))
)


;Added by Meena(9.8.11)
;Copies are available for two dollars each.
(defrule for4
(declare (salience 4700))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?viSeR  ?id1)
(id-root ?id1 dollar|rupee|cent|paisa|pound|pence|euro|yen|yuwan)    ;we need list of currency(Meena)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp       for4   "  ?id "  meM )" crlf))
)



;Added by Meena(6.8.11)
;I am all for people having fun. 
;She is all for it. 
;Are you for the proposal?
;Is government for the election?
(defrule for5
(declare (salience 4700))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(or(and(viSeRya-for_saMbanXI  ?viSeR  ?id1)
(id-root ?id1 postponing|postponement|proposal|advice|arrangement|election))
(and(id-root =(- ?id 1) all)(id-cat_coarse =(+ ?id 1) ?wrd&~verb&~verbal_noun))
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pakRa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp       for5   "  ?id "  ke_pakRa_meM )" crlf))
)



;Salience changed by Meena(27.7.11) to stop this rule for the example:I waited for Seeta for hours.(because ol takes (viSeRya-for_saMbanXI  Seeta hours))
;Added by Meena(22.5.11)
;In fact she had been feeling tired and queasy for the past three days.
(defrule for6
(declare (salience 4700))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-for_saMbanXI ? ?id1)(viSeRya-for_saMbanXI  ?viSeR  ?id1))
;(id-root ?id1 day|hour|month|week|minute|year|decade|century)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "time.gdbm" ?str)));instead of list Added time.gdbm by Shirisha Manju(16-07-13) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp       for6   "  ?id "  se )" crlf))
)




;You can substitute oil for butter in this recipe. 
;Added by Sukhada.
(defrule substitute_for
(declare (salience 5000))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-root ?kriyA substitute)
(kriyA-for_saMbanXI ?kriyA ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_baxale_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp   substitute_for  "  ?id " ke_baxale_meM )" crlf))
)




;Modified by Meena(6.8.11)
;I could not speak for laughing. 
;He did not answer for fear of hurting her. 
(defrule for7
(declare (salience 5000))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  laugh|fear|cough|arrogance|tear);Removed 'reason' from the list bcoz reason itself means vajaha. Modified by Manju (Suggested by Chaitanya Sir (06-07-13)
(kriyA-for_saMbanXI ?kriyA ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_vajaha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for7   "  ?id "  kI_vajaha_se )" crlf))
)


(defrule for8
(declare (salience 4800))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) distance|spacing|length|size|magnitude|measure)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for8   "  ?id "  - )" crlf))
)


;;Added "months" in the list(Meena 2.5.11)
;Modified by meena(25.9.09), added (kriyA-for_saMbanXI  ?id1 ?id2)and changed (id-word =(+ ?id 1) long|hours...) accordingly
;I lived there for two years . 
;I wondered for a long time why everyone liked her so much . 
(defrule for9
(declare (salience 4700))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) long|hours|weeks|years) ;modified by Dipti-27-07-09 ;dropped 'a' from the list
(id-word ?id2  miles|long|hours|weeks|years|time|months|hours|minutes|seconds) ;Added "time" in the list(Meena 8.02.10)
(kriyA-for_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for9   "  ?id "  waka )" crlf))
)


;Modified by Meena(26.9.09).Commented (id-word =(....) animate) as there is no list for animate in the database.Instead of this, I added (id-cat_coarse =(+ ?id 1) PropN) and (kriyA-for_saMbanXI ?id1  =(+ ?id 1))
;I waited for Seeta for hours .
;Shaking your head for 'No' is not universal.
(defrule for10
(declare (salience 4700))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) PropN)
(kriyA-for_saMbanXI ?id1  =(+ ?id 1))
;(id-word =(+ ?id 1) animate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp       for10   "  ?id "  ke_liye )" crlf))
)


(defrule for11
(declare (salience 4400))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyoMki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for11   "  ?id "  kyoMki )" crlf))
)

;"for","Conj","1.kyoMki"
;Rama was very angry with Madhu for she has again forgotten her birthday.


;;Commented by Meena(9.3.10)
;;Added  by Meena(9.3.10)
;;Thomas Edison tried two thousand different materials in search of a filament for the light bulb .
;(defrule for07
;(declare (salience 4300))
;(id-root ?id for)
;?mng <-(meaning_to_be_decided ?id)
;(viSeRya-for_saMbanXI =(- ?id 1)  ?id1)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id kA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp       for07   "  ?id "  kA )" crlf))
;)





;Salience reduced by Meena(9.3.10)
(defrule for12
(declare (salience 0))
;(declare (salience 4300))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for12   "  ?id "  ke_liye )" crlf))
)

;"for","Prep","1.ke_liye"
;Ravi bought a book for Sonu.
;Yash has a strong desire for a remote-control car.
;--"2.kI_ora_se"
;Speak for yourself, not for all.
;We do not know who the MP is for this district.
;--"3.ke_hisAba_se"
;She is very tall for her age.
;--"4.waka"
;He went on && on for an hour.
;
