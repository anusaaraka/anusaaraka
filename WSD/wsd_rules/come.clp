
(defrule come0
(declare (salience 5000))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id coming )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BAvI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  come.clp  	come0   "  ?id "  BAvI )" crlf))
)

;"coming","Adj","1.BAvI"
;The coming generations have to face the repurcussions of partition of the 
;country.
;
(defrule come1
(declare (salience 4900))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id coming )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Agamana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  come.clp  	come1   "  ?id "  Agamana )" crlf))
)

;"coming","N","1.Agamana"
;All are looking forward to the coming of US President to India.
;
(defrule come2
(declare (salience 4800))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gatiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come2  "  ?id "  " ?id1 "  Gatiwa_ho  )" crlf))
)

;How did this tragedy come about?
;yaha wrAsaxI kEse Gatiwa huI ?
(defrule come3
(declare (salience 4700))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 across)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJane_yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come3  "  ?id "  " ?id1 "  samaJane_yogya  )" crlf))
)

;His bitterness comes across in much of his poetry.
;usakI kadZavAhata usakI kaviwAoM meM JalakawI(samaJa meM AwI) hE
(defrule come4
(declare (salience 4600))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 across)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saMyogavaSa_mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come4  "  ?id "  " ?id1 "  saMyogavaSa_mila_jA  )" crlf))
)

;I came across my old album 
;muJe saMyogagavaSa apanI eka purAnI elabama milI
(defrule come5
(declare (salience 4500))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAWa_AnA_yA_sAWa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come5  "  ?id "  " ?id1 "  sAWa_AnA_yA_sAWa_ho  )" crlf))
)

;Come along with me! I don't want to go alone for a walk.
;mere sAWa calo ! mEM sEra pe akele nahIM jAnA cAhawA
(defrule come6
(declare (salience 4400))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pragawi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come6  "  ?id "  " ?id1 "  pragawi_kara  )" crlf))
)

;How's your thesis coming along?
;wumhArA WIsisa kEsA cala rahA hE ?
(defrule come7
(declare (salience 4300))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 between)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bIca_meM_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come7  "  ?id "  " ?id1 "  bIca_meM_A  )" crlf))
)

;Don't let this little matter come between us.
;isa CotI sI bAwa ko hamAre bIca mawa lAo
(defrule come8
(declare (salience 4200))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prApwa_karanA_yA_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come8  "  ?id "  " ?id1 "  prApwa_karanA_yA_pA  )" crlf))
)


;Accurate report was difficult to come by from the office.
;APisa se sahI riporta prApwa karanA muSkila WA

;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-dec-2013
;Replaced meaning 'GatanA_yA_kama_ho' with 'kama_ho' and added sub as price
;The price of milk has come down.
;xUXa kI kImawa kama ho gayI hE
(defrule come9
(declare (salience 4100))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?sub)
(id-word ?sub price)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come9  "  ?id "  " ?id1 "  kama_ho  )" crlf))
)


;$$$ Modified by Shirisha Manju 22-03-14 Suggested by Chaitanya sir
;Changed meaning from 'Age_baDZakara_AnA_yA_najZara_meM_A' to 'Age_A'
(defrule come10
(declare (salience 4000))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forward)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come10  "  ?id "  " ?id1 "  Age_A )" crlf))
)


;@@@ Added by Shirisha Manju 22-03-14 Suggested by Chaitanya sir
;For this reason the general public has to come forward. 
;isa kAraNa ke liye jana sAXAraNa ko Age AnA hE.
(defrule come_forward
(declare (salience 3900))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa ?id ?id1)
(id-word ?id1 forward)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp come_forward  "  ?id "  " ?id1 "  Age_A )" crlf))
)

;My friend came forward to support me in the meeting.
;mItiMga meM mere miwra ne Age baDZakara merI sahAyawA kI
(defrule come11
(declare (salience 3900))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 from)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_jagaha_se_saMbaMXiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come11  "  ?id "  " ?id1 "  kisI_jagaha_se_saMbaMXiwa_ho  )" crlf))
)

;Where do you come from?
;wuma kahAz se (kisa jagaha se saMbaMXiwa) ho ?
(defrule come12
(declare (salience 3800))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwwarAXikArI_bananA_yA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come12  "  ?id "  " ?id1 "  uwwarAXikArI_bananA_yA_ho  )" crlf))
)

;She came into a lot of money on her uncle's death.
;use apane aMkala kI mqwyu para bahuwa sI saMpawwi prApwa huI
(defrule come13
(declare (salience 3700))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come13  "  ?id "  " ?id1 "  prApwa_kara  )" crlf))
)

;He came in for a lot of criticism.
;usakI bahuwa aXika AlocanA huI
(defrule come14
(declare (salience 3600))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gatiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come14  "  ?id "  " ?id1 "  Gatiwa_ho  )" crlf))
)

;Whatever came of her plans to go to party.
;usakI pArtI meM Ane kI kyA yojanA hE?
(defrule come15
(declare (salience 3500))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAmane_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come15  "  ?id "  " ?id1 "  sAmane_A  )" crlf))
)

;The murderer finally came out.
;hawyArA AKirakAra sAmane A gayA
(defrule come16
(declare (salience 3400))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prakASiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come16  "  ?id "  " ?id1 "  prakASiwa_ho  )" crlf))
)

;This magazine comes out only twice a month.
;yaha pawrikA mahIne meM xo bAra prakASiwa howI hE
(defrule come17
(declare (salience 3300))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come17  "  ?id "  " ?id1 "  prahAra_kara  )" crlf))
)

;The soldiers came out after seeing their enemies.
;SawruoM ko xeKakara sipAhiyoM ne prahAra kiyA
(defrule come18
(declare (salience 3200))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vikasiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come18  "  ?id "  " ?id1 "  vikasiwa_kara  )" crlf))
)

;This album has come out quite well.
;yaha elabama acCI banI hE
(defrule come19
(declare (salience 3100))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come19 " ?id "  hatA )" crlf)) 
)

;This ring won't come out easily from my finger.
;yaha aMgUTI merI uzgalI se nahIM nikalegI
(defrule come20
(declare (salience 3000))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come20  "  ?id "  " ?id1 "  hatA  )" crlf))
)

;This ring won't come out easily from my finger.
;yaha aMgUTI merI uzgalI se nahIM nikalegI
(defrule come21
(declare (salience 2900))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiKAnA_yA_vikasiwa_karanA_yA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come21  "  ?id "  " ?id1 "  xiKAnA_yA_vikasiwa_karanA_yA_ho  )" crlf))
)

;She's come out in black spots on her face.
;usake cehare para kAle Xabbe xiKane lage hEM
(defrule come22
(declare (salience 2800))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kahanA_yA_kaha_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come22  "  ?id "  " ?id1 "  kahanA_yA_kaha_xe  )" crlf))
)

;What will she come out with next?
;aba Age vaha kyA kahegI?
(defrule come23
(declare (salience 2700))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come23  "  ?id "  " ?id1 "  mila  )" crlf))
)

;Come round && see us soon.
;Ao Ora hamase milo
(defrule come24
(declare (salience 2600))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hoSa_meM_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come24  "  ?id "  " ?id1 "  hoSa_meM_A  )" crlf))
)

;She didn't come round for ten minutes at least.
;vaha kama se kama xasa minata waka hoSa meM nahIM AyI
(defrule come25
(declare (salience 2500))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAna_lenA_yA_sahamawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come25  "  ?id "  " ?id1 "  mAna_lenA_yA_sahamawa_ho  )" crlf))
)

;Don't worry!she'll come round gradually.
;cinwA mawa karo ! vaha XIre -XIre mAna jAegI
(defrule come26
(declare (salience 2400))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bacakara_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come26  "  ?id "  " ?id1 "  bacakara_nikala  )" crlf))
)

;It was a wonder that he came through the car accident.
;hErAnI kI bAwa hE ki vo kAra xurGatanA meM baca gayA
(defrule come27
(declare (salience 2300))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hoSa_meM_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come27  "  ?id "  " ?id1 "  hoSa_meM_A  )" crlf))
)

;When will she come to after the operation.
;vaha ApreSana ke bAxa kaba hoSa meM AegI?
(defrule come28
(declare (salience 2200))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vicAra_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come28  "  ?id "  " ?id1 "  vicAra_A  )" crlf))
)

;It suddenly came to my mind that he was my old friend.
;acAnaka muJe XyAna AyA ki vaha merA eka purAnA miwra WA
(defrule come29
(declare (salience 2100))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come29  "  ?id "  " ?id1 "  mila_jA  )" crlf))
)

;I came upon a gold chain in the park.
;muJe pArka meM eka sone kI cena mila gayI
(defrule come30
(declare (salience 2000))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzcanA_yA_pahuzca_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come30  "  ?id "  " ?id1 "  pahuzcanA_yA_pahuzca_jA  )" crlf))
)

;This work of your's doesn't come up to my expectations.
;wumhArA yaha kArya merI apekRAoM para nahIM pahuzcawA
(defrule come31
(declare (salience 1900))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 soca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come31  "  ?id "  " ?id1 "  soca  )" crlf))
)

;She came up with a great solution when we were in a problem.
;jaba hama xuviXA meM We waba usake mana meM eka vicAra AyA
(defrule come32
(declare (salience 1800))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-about_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come32 " ?id "  ho )" crlf)) 
)

(defrule come33
(declare (salience 1700))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come33  "  ?id "  " ?id1 "  ho  )" crlf))
)

(defrule come34
(declare (salience 1600))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 across)
(kriyA-across_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_mila));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come34 " ?id "  acAnaka_mila )" crlf)) 
)

(defrule come35
(declare (salience 1500))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 across)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come35  "  ?id "  " ?id1 "  acAnaka_mila  )" crlf))
)

(defrule come36
(declare (salience 1400))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-after_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAxa_meM_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come36 " ?id "  bAxa_meM_A )" crlf)) 
)

(defrule come37
(declare (salience 1300))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAxa_meM_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come37  "  ?id "  " ?id1 "  bAxa_meM_A  )" crlf))
)

(defrule come38
(declare (salience 1200))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-along_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_baDZa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come38 " ?id "  Age_baDZa )" crlf)) 
)

(defrule come39
(declare (salience 1100))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come39  "  ?id "  " ?id1 "  Age_baDZa  )" crlf))
)

(defrule come40
(declare (salience 1000))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-at_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkramaNa_kelie_Age_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come40 " ?id "  AkramaNa_kelie_Age_A )" crlf)) 
)

(defrule come41
(declare (salience 900))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kelie_Age_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come41  "  ?id "  " ?id1 "  AkramaNa_kelie_Age_A  )" crlf))
)

(defrule come42
(declare (salience 800))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-back_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_se_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come42 " ?id "  Pira_se_A )" crlf)) 
)

(defrule come43
(declare (salience 700))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pira_se_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come43  "  ?id "  " ?id1 "  Pira_se_A  )" crlf))
)

(defrule come44
(declare (salience 600))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-by_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_pA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come44 " ?id "  kuCa_pA )" crlf)) 
)

(defrule come45
(declare (salience 500))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kuCa_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come45  "  ?id "  " ?id1 "  kuCa_pA  )" crlf))
)

(defrule come46
(declare (salience 400))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 close)
(kriyA-close_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karIba_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come46 " ?id "  karIba_A )" crlf)) 
)

(defrule come47
(declare (salience 300))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 close)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 karIba_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come47  "  ?id "  " ?id1 "  karIba_A  )" crlf))
)

(defrule come48
(declare (salience 200))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come48 " ?id "  gira )" crlf)) 
)


;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-dec-2013
; Replaced 'gira' with 'nIce_A'
;Yes, the musk deer will come down from the colder regions above when it snows more.[gyananidhi]
;हाँ , कस्तूरी मृग ठन्डे क्षेत्रों  से नीचे आ जायेगा जब बर्फ ज्यादा पङेगी  
(defrule come49
(declare (salience 100))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come49  "  ?id "  " ?id1 "  nIce_A  )" crlf))
)

(defrule come50
(declare (salience 0))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-forth_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakata_ho_jA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come50 " ?id "  prakata_ho_jA )" crlf)) 
)

(defrule come51
(declare (salience -100))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prakata_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come51  "  ?id "  " ?id1 "  prakata_ho_jA  )" crlf))
)

(defrule come52
(declare (salience -200))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forward)
(kriyA-forward_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyawA_praxAna_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come52 " ?id "  sahAyawA_praxAna_kara )" crlf)) 
)

(defrule come53
(declare (salience -300))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forward)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahAyawA_praxAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come53  "  ?id "  " ?id1 "  sahAyawA_praxAna_kara  )" crlf))
)

(defrule come54
(declare (salience -400))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 near)
(kriyA-near_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come54 " ?id "  pAsa_A )" crlf)) 
)

(defrule come55
(declare (salience -500))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 near)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come55  "  ?id "  " ?id1 "  pAsa_A  )" crlf))
)

(defrule come56
(declare (salience -600))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-of_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExA_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come56 " ?id "  pExA_ho )" crlf)) 
)

(defrule come57
(declare (salience -700))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pExA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come57  "  ?id "  " ?id1 "  pExA_ho  )" crlf))
)

(defrule come58
(declare (salience -800))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPala_evaM_praBAvaSAlI_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come58 " ?id "  saPala_evaM_praBAvaSAlI_ho )" crlf)) 
)

(defrule come59
(declare (salience -900))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saPala_evaM_praBAvaSAlI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come59  "  ?id "  " ?id1 "  saPala_evaM_praBAvaSAlI_ho  )" crlf))
)

(defrule come60
(declare (salience -1000))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come60 " ?id "  bAhara_A )" crlf)) 
)

(defrule come61
(declare (salience -1100))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come61  "  ?id "  " ?id1 "  bAhara_A  )" crlf))
)

(defrule come62
(declare (salience -1200))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-over_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come62 " ?id "  ho )" crlf)) 
)

(defrule come63
(declare (salience -1300))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come63  "  ?id "  " ?id1 "  ho  )" crlf))
)

(defrule come64
(declare (salience -1400))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-round_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjI_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come64 " ?id "  rAjI_ho )" crlf)) 
)

(defrule come65
(declare (salience -1500))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rAjI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come65  "  ?id "  " ?id1 "  rAjI_ho  )" crlf))
)

(defrule come66
(declare (salience -1600))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPalawA_se_nikala_jA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come66 " ?id "  saPalawA_se_nikala_jA )" crlf)) 
)

(defrule come67
(declare (salience -1700))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saPalawA_se_nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come67  "  ?id "  " ?id1 "  saPalawA_se_nikala_jA  )" crlf))
)

(defrule come68
(declare (salience -1800))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIca_meM_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come68 " ?id "  bIca_meM_A )" crlf)) 
)

(defrule come69
(declare (salience -1900))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bIca_meM_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come69  "  ?id "  " ?id1 "  bIca_meM_A  )" crlf))
)

(defrule come70
(declare (salience -2000))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) into )
(id-word =(+ ?id 2) being)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aswiwva_meM_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  come.clp 	come70   "  ?id "  aswiwva_meM_A )" crlf))
)

(defrule come71
(declare (salience -2100))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come71 " ?id "  gira )" crlf)) 
)

(defrule come72
(declare (salience -2200))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come72  "  ?id "  " ?id1 "  gira  )" crlf))
)

(defrule come73
(declare (salience -2300))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upara_uTa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come73 " ?id "  upara_uTa )" crlf)) 
)

(defrule come74
(declare (salience -2400))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 upara_uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come74  "  ?id "  " ?id1 "  upara_uTa  )" crlf))
)

(defrule come75
(declare (salience -2500))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come75 " ?id "  bAhara_A )" crlf)) 
)

(defrule come76
(declare (salience -2600))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come76 " ?id "  bAhara_A )" crlf)) 
)

(defrule come77
(declare (salience -2700))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come77  "  ?id "  " ?id1 "  bAhara_A  )" crlf))
)

(defrule come78
(declare (salience -2800))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-over_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ora_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " come.clp come78 " ?id "  ora_A )" crlf)) 
)

(defrule come79
(declare (salience -2900))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ora_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come79  "  ?id "  " ?id1 "  ora_A  )" crlf))
)

(defrule come80
(declare (salience -3000))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aMxara_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " come.clp	come80  "  ?id "  " ?id1 "  aMxara_A  )" crlf))
)

;PP_null_in && category=verb	aMxara_A	100
; Example: Galaxies come in various shapes.
; example: Please come in. 
; (in should be distinguished, do not group come in)




;Added by Meena(28.7.11)
;The test may come today. 
(defrule come81
(declare (salience 3300))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 test|quiz|exam|examination)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  come.clp      come81   "  ?id "  ho )" crlf))
)



(defrule come82
(declare (salience -3300))
(id-root ?id come)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  come.clp 	come82   "  ?id "  A )" crlf))
)

;default_sense && category=verb	A	0
;"come","V","1.AnA"
;She has come from Indore.
;--"2.yAwrA_karanA"
;We have come 160 km since morning.
;--"3.eka_niSciwa_sWalala_ko_AnA"
;He came running to her.
;--"4.eka_niSciwa_sWAna_gqhaNa_karanA"
;Duty comes first for soldiers.
;--"5.upalabXa_honA"
;Women's outfit comes in various designs.
;--"6.banakara_AnA"
;The handle of my bag has come loose.
;--"7.warka_para_pahuzcanA"
;I have come to believe that our neighbour has underworld connection.
;--"8.praSna_meM_prayoga_karanA"
;How did you come to know about this accident?
;--"9.aBinaya_karanA"
;She tried to come innocent.
;--"10.kAmowwApa_karanA"
;She didn't want to come.
;--"11.kisI_xaSA_kA_AnA/pahuzcanA"
;At last monsoon has come!
;
;
;LEVEL 
;Headword : come
;
;Examples --
;
;1. He comes to work by bus.
;vaha basa se kAma para AwA hE.		
;2. She will come home after lunch.
;vaha KAne ke bAxa Gara AegI.
;3. Are you coming all alone ?
;kyA wuma bilkula akele A rahe ho ?
;4. They've come a long way in the last two years.
;ve piCale xo sAloM meM bahuwa Age A cuke hE.
;5. The insects came crawling into the room.
;kIdZe reMgawe hue kamare ke BIwara Ae.
;6. She came first in the race.
;vaha xOdZa meM praWama AI.
;7. These shoes come in three sizes.
;ye jUwe wIna mApa meM Awe hEM.
;8. The wheel has come loose.
;pahiyA DIlA ho gayA hE.
;9. He has come to realize his mistake.
;vaha apanI BUla samaJane lagA hE. 
;10. How did she come to break her finger.
;usane apanI uzgalI kEse wodZI ?
;11. Come, come, Mr. Jones, be reasonable.
;Ao, Ao mistara jonsa, samaJaxArI barwye.
;
;uparaliKiwa saBI vAkyoM meM "come" Sabxa kA arWa "AnA" hE. 
;
;aba vAkya 8 xeKe wo usameM "come" ke lie hinxI meM "gayA" EsA arWa A rahA hE.
;kinwu isa vAkya ke arWa kA alaga arWanirUpaNa BI ho sakawA hE, jEse :
;"pahiyA DIlA ho jAne kI sWiwi meM AyA hE".  
;
;vAkya 9 meM BI "come" kA arWanirUpaNa vAkya 8 kI waraha kiyA jA sakawA hE, jEse :
;"vaha apanI BUla samaJa lene kI sWiwi meM AyA hE".
;
;vAkya 8 Ora vAkya 9 kI waraha, vAkya 10 meM BI "come" kA arWa "AyA" prApwa kara sakawe hE. jEse :
;"vaha apanI uzgalI wodZane kI sWiwi meM kEse AI?" 
;
;wo aba hama "come" kA mUlArWa "AnA" prApwa kara sakawe hEM.
;
;"come","AnA"  yAni 'come' kA sUwra hogA
;
;sUwra : AnA 
;
