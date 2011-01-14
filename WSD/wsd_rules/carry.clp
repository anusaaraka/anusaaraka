
(defrule carry0
(declare (salience 5000))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forward)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry0  "  ?id "  " ?id1 "  jodZa  )" crlf))
)

;This sum is wrong because you haven't carried the 4 forward.
;yaha savAla galawa hE kyoMki wumane isameM cAra nahIM jodZA
(defrule carry1
(declare (salience 4900))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry1  "  ?id "  " ?id1 "  saPala_ho  )" crlf))
)

;It was a difficult situation,but she carried it off well.
;yaha eka gazBIra parisWiwi WI lekina vaha usameM saPala rahI
(defrule carry2
(declare (salience 4800))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry2  "  ?id "  " ?id1 "  jArI_raKa  )" crlf))
)

;They must carry on working.
;unhe apanA kAma jArI raKanA cAhie
(defrule carry3
(declare (salience 4700))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 burA_vyavahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry3  "  ?id "  " ?id1 "  burA_vyavahAra_kara  )" crlf))
)

;The children often carry on in the absence of a teacher.
;bacce aksara aXyApaka kI anupasWiwi meM burA vyavahAra karawe hEM
(defrule carry4
(declare (salience 4600))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prema_saMbaMXa_sWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry4  "  ?id "  " ?id1 "  prema_saMbaMXa_sWApiwa_kara  )" crlf))
)

;She's been carrying on with her teacher.
;usane apane aXyApaka ke sAWa prema saMbaMXa sWApiwa kie
(defrule carry5
(declare (salience 4500))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry5  "  ?id "  " ?id1 "  calA  )" crlf))
)

;I can't carry on this relationship anymore.
;mEM isa saMbaMXa ko Ora aXika nahIM calA sakawA
(defrule carry6
(declare (salience 4400))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry6  "  ?id "  " ?id1 "  pUrA_ho  )" crlf))
)

;The work would be carried out in ten days.
;kAma xasa xinoM meM pUrA ho jAegA
(defrule carry7
(declare (salience 4300))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry7  "  ?id "  " ?id1 "  jArI_raKa  )" crlf))
)

;They must carry on working.
;unhe apanA kAma jArI raKanA cAhie
(defrule carry8
(declare (salience 4200))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_kAma_ko_pUrA_karane_meM_maxaxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry8  "  ?id "  " ?id1 "  kisI_kAma_ko_pUrA_karane_meM_maxaxa_kara  )" crlf))
)

;It was my luck that carried me through.
;yaha merI kismawa WI jisane mere kAma ko pUrA karane meM merI maxaxa kI
(defrule carry9
(declare (salience 4100))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry9  "  ?id "  " ?id1 "  pUrA_kara  )" crlf))
)

;The work would be carried out in ten days.
;yaha kAma xasa xinoM meM pUrA ho jAegA
(defrule carry10
(declare (salience 4000))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 smaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry10  "  ?id "  " ?id1 "  smaraNa_kara  )" crlf))
)

(defrule carry11
(declare (salience 3900))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 smaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry11  "  ?id "  " ?id1 "  smaraNa_kara  )" crlf))
)

(defrule carry12
(declare (salience 3800))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forward)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry12  "  ?id "  " ?id1 "  Age_le_jA  )" crlf))
)

(defrule carry13
(declare (salience 3700))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forward)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry13  "  ?id "  " ?id1 "  Age_le_jA  )" crlf))
)

(defrule carry14
(declare (salience 3600))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry14  "  ?id "  " ?id1 "  jIwa  )" crlf))
)

(defrule carry15
(declare (salience 3500))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry15  "  ?id "  " ?id1 "  jIwa  )" crlf))
)

(defrule carry16
(declare (salience 3400))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry16  "  ?id "  " ?id1 "  Age_baDZA  )" crlf))
)

(defrule carry17
(declare (salience 3300))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry17  "  ?id "  " ?id1 "  Age_baDZA  )" crlf))
)

(defrule carry18
(declare (salience 3200))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry18  "  ?id "  " ?id1 "  pUrNa_kara  )" crlf))
)

(defrule carry19
(declare (salience 3100))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry19  "  ?id "  " ?id1 "  pUrNa_kara  )" crlf))
)

(defrule carry20
(declare (salience 3000))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kaTina_samaya_meM_kisI_kI_sahAyawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry20  "  ?id "  " ?id1 "  kaTina_samaya_meM_kisI_kI_sahAyawA_kara  )" crlf))
)

(defrule carry21
(declare (salience 2900))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kaTina_samaya_meM_kisI_kI_sahAyawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry21  "  ?id "  " ?id1 "  kaTina_samaya_meM_kisI_kI_sahAyawA_kara  )" crlf))
)

(defrule carry22
(declare (salience 2800))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kaTina_samaya_meM_kisI_kI_sahAyawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry22  "  ?id "  " ?id1 "  kaTina_samaya_meM_kisI_kI_sahAyawA_kara  )" crlf))
)

(defrule carry23
(declare (salience 2700))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kaTina_samaya_meM_kisI_kI_sahAyawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carry.clp	carry23  "  ?id "  " ?id1 "  kaTina_samaya_meM_kisI_kI_sahAyawA_kara  )" crlf))
)

;particle_away_- && category=verb	udA_le_jA	10.1800282442072
; He carried away many pieces of furniture.
;PP_null_away && category=verb	udA_le_jA	10.1800282442072
(defrule carry24
(declare (salience 2600))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carry.clp 	carry24   "  ?id "  uTA_le_jA )" crlf))
)

(defrule carry25
(declare (salience 2500))
(id-root ?id carry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxUka_kI_sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carry.clp 	carry25   "  ?id "  baMxUka_kI_sImA )" crlf))
)

;"carry","N","1.baMxUka_kI_sImA"
;The carry of Bofors gun is superb.
;
;
;LEVEL 
;
;
; carry-               "sUwra" (nibanXa)
;-----------
;
;"carry","VT","1.le_jAnA/DonA"
;You must carry your camping gear
;--"2.garBavawI_honA"
;She was carrying their second child.
;--"3.boJa_DonA"
;The bridge has to carry lot of traffic.
;--"4.samarWana_honA"
;The bill was carried by 250 votes to 200.
;--"5.praBAviwa_karanA"
;His speech on poverty carried the audience.
;--"6.calana"
;She carries herself very well.
;
;"carry","N","1.baMxUka_kI_sImA"
;The carry of Bofors gun is superb.
;-------------------------------------------------
;
;sUwra : vahana`{garBa}/banxUka_kI_sImA
;------------------------------
;
;upariliKiwa saBI vAkyoM meM `vahana' Sabxa kA arWa sAmAnya xIKawA hE .
; 
;spaRtawA ke lie `garBa' xiyA gayA hE .
; 
;`vahana' hI `banxUka kI sImA' ke arWa meM parivarwiwa huA hE .
;kAraNa- banxUka vahAz waka usa gole yA anya kisI ko Do sakawA hE . 
;isa arWa meM rUDa hone ke kAraNa usa arWa kA xiyA jAnA samBamawaH uciwa hE . 
;              
;
