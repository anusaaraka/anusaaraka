
(defrule catch0
(declare (salience 5000))
(id-root ?id catch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 viKyAwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " catch.clp	catch0  "  ?id "  " ?id1 "  viKyAwa_ho  )" crlf))
)
;The movie could not catch on.
;Pilma viKyAwa nahIM ho sakI




(defrule catch1
(declare (salience 4900))
(id-root ?id catch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " catch.clp	catch1  "  ?id "  " ?id1 "  samaJa  )" crlf))
)
;The audience soon catched on that he is only joking.
;SrowA wuranwa samaJa gae ki vaha sirPa majZAka kara rahA hE





(defrule catch2
(declare (salience 4800))
(id-root ?id catch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " catch.clp	catch2  "  ?id "  " ?id1 "  pakadZa  )" crlf))
)
;You go on ahead,and i'll catch you up later.
;wuma Age jAo ,mEM wumhe bAxa meM pakadZa lUzgA




(defrule catch3
(declare (salience 4700))
(id-root ?id catch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_ke_pAsa_pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " catch.clp	catch3  "  ?id "  " ?id1 "  kisI_ke_pAsa_pahuzca  )" crlf))
)
;We caught him up although he was walking very fast.
;hama usake pAsa pahuzca gae hAlAMki vaha bahuwa wejZa cala rahA WA



(defrule catch4
(declare (salience 4600))
(id-root ?id catch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_aXUre_kAma_ko_pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " catch.clp	catch4  "  ?id "  " ?id1 "  kisI_aXUre_kAma_ko_pUrA_kara  )" crlf))
)
;She had a lot of work to catch up on after the vacations.
;CuttiyoM ke bAxa use bahuwa sA kAma pUrA karanA WA




(defrule catch5
(declare (salience 4500))
(id-root ?id catch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " catch.clp	catch5  "  ?id "  " ?id1 "  pakadZa  )" crlf))
)




;Added by Meena(11.11.09)
;The punch caught him in the back. 
(defrule catch6
(declare (salience 4100))
(id-root ?id catch)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
;(id-root ?id1 rock|punch|blow)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
(kriyA-object ?id ?id2)
;(id-root ?id2 him|her|me|them|us|Hari)
(or(id-root ?id2  ?str1&:(and (not (numberp ?str1))(gdbm_lookup_p "animate.gdbm" ?str1)))(id-cat_coarse ?id2 PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  catch.clp     catch6   "  ?id "  laga )" crlf))
)





;Salience reduced by Meena(11.11.09)
(defrule catch7
(declare (salience 1000))
;(declare (salience 4100))
(id-root ?id catch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  catch.clp 	catch7   "  ?id "  pakadZa )" crlf))
)
;"catch","N","1.pakadZa"
;Jonty Rhodes made a superb catch of the ball at the boundaryline.




;Salience reduced by Meena(11.11.09)
(defrule catch8
(declare (salience 1000))
;(declare (salience 4000))
(id-root ?id catch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  catch.clp 	catch8   "  ?id "  pakada )" crlf))
)
;"catch","V","1.pakadZanA"
;He caught the ball superbly.
;
