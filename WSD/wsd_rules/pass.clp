;Can you pass these pictures around for everyone to look at, please?[ Oxford Advanced Learner's Dictionary]
;kyA Apa kqpayA saba ke xene lie ye ciwra GumA sakawe hEM?
(defrule pass_GumA
(declare (salience 2500))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 around)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GumA))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  pass.clp	pass_GumA   " ?id " " ?id1 "GumA  )" crlf))
)

;He escaped by passing himself off as a guard.[ Oxford Advanced Learner's Dictionary]
;vaha paharexAra  ke_rupa meM BAga gayA.
(defrule pass_ke_rupa_meM
(declare (salience 2400))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id2 pronoun)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 ke_rupa_meM))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_ke_rupa_meM  " ?id "  " ?id1 "  " ?id2"  ke_rupa_meM  )" crlf))
)

;The demonstration passed off peacefully.[ Oxford Advanced Learner's Dictionary] 
;praxarSana SAnwi se saMpanna huA.
(defrule pass_saMpanna_ho
(declare (salience 2350))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 off)
(not (kriyA-object ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saMpanna_ho))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_saMpanna_ho  " ?id "  " ?id1 "   saMpanna_ho )" crlf))
)

;I managed to pass off the fake money in the market. 
;mEM bAjAra meM jAlI pEse calAne meM kAmiyAba rahA.
(defrule pass_calA
(declare (salience 2300))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 off)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 calA))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_calA  " ?id "  " ?id1 "   calA )" crlf))
)

;Parser problem
;His grandfather passed away last night.
;usake xAxAjI piCalI rAwa ko gujZara gae.
(defrule pass_gujZara_jA 
(declare (salience 1250))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id passed)
(id-word ?id1 on|away)
(or  (kriyA-upasarga ?id ?id1)
(kriyA-subject  ?id ?id2))
;(id-root ?id  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gujZara_jA))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_gujZara_jA   " ?id " " ?id1 " gujZara_jA  )" crlf))
)


;I felt awful when the teacher started to pass back the exam papers.
;jaba SikRaka ne parIkRA pepara vApisa karanA Suru kiyA waba muJe burA mahasUsa  huA.
(defrule pass_vApisa_kara
(declare (salience 2100))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vApisa_kara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_vApisa_kara  " ?id " " ?id1 " vApisa_kara  )" crlf)))


;We were passing through, so we thought we'd come and say hello.[ Oxford Advanced Learner's Dictionary]
;hama yahAz se gujara rahe We, isalie hamane socA ki hama Akar hElo kahezge .
(defrule pass_gujZara1
(declare (salience 2000))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 through|by)
(kriyA-upasarga ?id ?id1)
;(not (kriyA-object ?id ?))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gujZara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_gujZara1  " ?id " " ?id1 " gujZara  )" crlf))
)

;Parser problem
;She feels that life is passing her by. [ Oxford Advanced Learner's Dictionary]
;vaha mahasUsa karawI hE ki jIvana kA usako patA_nahIM_cala rahA hE.
(defrule pass_patA_nahIM_cala
(declare (salience 1900))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 by)
;(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id2 pronoun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 patA_nahIM_cala))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_patA_nahIM_cala  " ?id " " ?id1 " patA_nahIM_cala  )" crlf))
)

;Parser problem
;Folk tales have been passed down from generation to generation. 
;loka kaWAez pIDI xarapIDI AwA rahI hEM.
(defrule pass_AwA_raha
(declare (salience 1800))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AwA_raha))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_AwA_raha  " ?id " " ?id1 " AwA_raha  )" crlf))
)

;Parser problem
;He speaks the language so well he could easily pass for a German.[ Oxford Advanced Learner's Dictionary] 
;vaha iwanA acCI waraha BARA bolawA hE use AsAnI se jarmana vyakwi mAna_jA sakawA hE.
(defrule pass_mAnA_jA
(declare (salience 1700))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word  ?id1 for)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI ?id ?id2)
(id-root ?id2 german)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id1 mAnA_jA))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_mAnA_jA  " ?id "  " ?id1 "  mAnA_jA  )" crlf))
)

;Parser problem
;We had some wine - or what passes for wine in that area.[ Oxford Advanced Learner's Dictionary] 
;hamArA WodZI vAina WI- yA  usa kRewra meM vAina ke_nAma_para_jo milawA hE.
(defrule pass_ke_nAma_para_jo_mila
(declare (salience 1600))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(or  (id-word =(+ ?id 1) for)
(id-wordt ?id1 for))
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id2)
(id-root ?id2 what|or)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) ke_nAma_para_jo_mila))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_ke_nAma_para_jo_mila  " ?id "  " = (+ ?id 1) " ke_nAma_para_jo_mila  )" crlf))
)

;Parser problem
;Added preeti(03-07-13)
;Many foreign words have passed into the English language.[ Oxford Advanced Learner's Dictionary]
;bahuwa sAre vixeSI Sabxa aMgrejI BARA meM A cuke hEM.
(defrule pass_A
(declare (salience 1500))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) into)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass_A  "  ?id "    A  )" crlf))
)

;Parser problem
;I passed your message on to my mother.[ Oxford Advanced Learner's Dictionary] 
;mEMne merI mAz ko ApakA sanxeSa xiyA.
(defrule pass_xe
(declare (salience 1300))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 on)
;(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id2)
;(id-root ?id2 message)
(id-cat_coarse ?id2 noun|pronoun)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* " pass.clp	pass_xe  " ?id "  " ?id1 " xe  )" crlf))
)

;Parser problem
;Added preeti(03-07-13)
;Imagine passing up an offer like that![ Oxford Advanced Learner's Dictionary]
;usa waraha ke eka praswAva ka Codane kI kalpanA kIjie!
;I think I'll pass on dinner tonight- I'm not hungry.
;socawA hUz- ki mEM Aja_kI rAwa rAwa_kA Bojana CodUzgA - muJe BUKa nahIM hEM.
(defrule pass_CodZa1
(declare (salience 1350))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on|up)
(or(kriyA-upasarga ?id ?id1)(kriyA-vAkyakarma  ? ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_CodZa1  " ?id "  " ?id1 "  CodZa )" crlf))
)


;Added preeti(03-07-13)
;Let's pass on to the next item on the agenda.
;caliye hama kAryasUcI para agale viRaya pe Age baDeM.
(defrule pass_Age_baDZa
(declare (salience 1350))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-to_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id 1 Age_baDZa  ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_Age_baDZa  "  ?id "  " ?id1 " Age_baDZa )" crlf))
)

;Added preeti(03-07-13)
;She suddenly passed out while going towards the door.[old clp]
;vaha jaba xaravAje kI ora baDZI acAnaka behoSa huI.
(defrule pass_behoSa_ho
(declare (salience 1100))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(not (kriyA-object ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 behoSa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_behoSa_ho  "  ?id "  " ?id1 "  behoSa_ho  )" crlf))
)

;Added preeti(03-07-13)
;The protesters passed out leaflets to the growing crowd.
;viroXako ne baDawI huI BIda ko parce bAzte.
;They passed round copies of the handbook.(parsar problem for round)
;unhoMne puswikA kI prawiyAz bAztI.
(defrule pass_bAzta
(declare (salience 1000))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out|round)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_bAzta  "  ?id "  " ?id1 "  bAzta )" crlf))
)

;Added preeti(03-07-13)
;She passed over me as she doesn't know me.[old clp]
;vaha muJe nahIM jAnawI hE isalie usane muJe anaxeKA kiyA.
(defrule pass_anaxeKA_kara  
(declare (salience 1150))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id2 pronoun)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anaxeKA_kara)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass_anaxeKA_kara  "  ?id "  " ?id1 "  anaxeKA_kara  )" crlf))
)

;Added preeti(03-07-13)
;The shares passed to his daughter when he died.
;vaha jaba mara gayA wo Seyara usakI betI ko mile .
(defrule pass_mila  
(declare (salience 600))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object ?id ?)) 
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  mila)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass_mila  "  ?id "   mila  )" crlf))
)

;Added preeti(03-07-13)
;She passed her hand across her forehead.[ Oxford Advanced Learner's Dictionary] 
;usane usake mAWe ke saBI ora usakA hAWa PerA.
(defrule pass_Pera
(declare (salience 700))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?)
;(id-cat_coarse  =(+ ?id 3)  adverb|preposition)
(id-root =(+ ?id 3)  across|around)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pera))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pass.clp  	pass_Pera   " ?id " Pera  )" crlf))
)

;Added preeti(03-07-13)
;Pass me over that book.[ Oxford Advanced Learner's Dictionary] 
;vah puswaka  muJe xIjie.
(defrule pass_xe1
(declare (salience 800))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-over_to_saMbanXI  ?id ?id2) (kriyA-across_to_saMbanXI  ?id ?id2)(kriyA-over_saMbanXI  ?id ?id2))
(id-cat_coarse ?id2 pronoun|noun )
(id-word ?id1 over|across)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng  ?id ?id1 xe))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng    " ?*wsd_dir* "  pass.clp  	pass_xe1   " ?id " " ?id1 " xe  )" crlf))
)


;He passed the ball to Rooney.[ Oxford Advanced Learner's Dictionary]
;usane PropN-rooney-PropN ko golA PeMka.
(defrule pass_PeMka
(declare (salience 900))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ball)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pass.clp 	pass_PeMka   "  ?id "  PeMka )" crlf))
)

;Added preeti(03-07-13)
;Unemployment has now passed the three million mark.[ Oxford Advanced Learner's Dictionary]
;berojagArI aba wIsa lAKa niSAna pAra_kara cukI hE.
(defrule pass_pAra_kara
(declare (salience 1000))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-aXikaraNavAcI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  pAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  pass.clp  	pass_pAra_kara   "  ?id " pAra_kara  )" crlf))
)


;Added preeti(03-07-13)
;She had passed from childhood to early womanhood.[ Oxford Advanced Learner's Dictionary]
;vaha bAlyAvasaWA se kiSorAvasWA meM pahuMcI.
(defrule pass_pahuZca
(declare (salience 1050))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?)
(not(kriyA-object ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  pahuZca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  pass.clp  	pass_pahuZca   "  ?id " pahuZca  )" crlf))
)

;Added preeti(03-07-13)
;The examiners passed all the candidates.[ Oxford Advanced Learner's Dictionary]
;parIkRakoM ne saBI ummIxavAroM ko pAsa kiyA.
(defrule pass_pAsa_kara
(declare (salience 1100))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?) 
(kriyA-object ?id ?id1) 
(or(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))) (id-root ?id1 test|exam))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  pAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  pass.clp  	pass_pAsa_kara   "  ?id "  pAsa_kara  )" crlf))
)

;Added preeti(03-07-13)
;He is determined to pass this time.[ Oxford Advanced Learner's Dictionary] 
;isa bAra usane pAsa hone kA niScaya kiyA hE.
;usane isa bAra pAsa hone kA niScaya kiyA hE.
(defrule pass_pAsa_ho
(declare (salience 1100))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1) 
(or(not(kriyA-object ?id ?)) 
(and(kriyA-object ?id ?id2) (id-root ?id2 time)))
(kriyA-kriyArWa_kriyA  ?id3 ?id)
(id-root ?id3 determine)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  pAsa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  pass.clp  	pass_pAsa_ho   "  ?id "  pAsa_ho  )" crlf))
)

;In January 1990 , a historic new law was passed .[old clp]
;janavarI 1990 meM, eka EwihAsika nayA niyama pAriwa kiyA gayA WA.
;Added by sheetal(20-01-10).
; Added bill to the list by Meena (22-01-10)
; Added by Meena(22-01-10)
(defrule pass_pAriwa_kara
(declare (salience 1200))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 law|bill) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pass.clp      pass_pAriwa_kara   "  ?id "  pAriwa_kara )" crlf))
)

;Added preeti(03-07-13)
;If you're passing blood you ought to see a doctor.[ Oxford Advanced Learner's Dictionary]
;yaxi Apake KUna jA rahA hEM wo Apako dAktara ko xeKAnA cAhie.
(defrule pass_jA
(declare (salience 1300))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 blood|water|urine|pus)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  pass.clp	pass_jA   "  ?id "  jA )" crlf))
)

;Added preeti(03-07-13)
;The pass mark is 50%.[ Oxford Advanced Learner's Dictionary]
;saPalawA aMka 50 % hE.
;She got a pass in French.
;use Prenca meM saPalawA milI.
(defrule pass_saPalawA
(declare (salience 600))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(samAsa_viSeRya-samAsa_viSeRaNa  ? ?id) (kriyA-object  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  saPalawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pass.clp  	pass_saPalawA   "  ?id " saPalawA  )" crlf))
)


;Added preeti(03-07-13)
;They came over the top of the pass and started down towards the coast.[ Oxford Advanced Learner's Dictionary]
;ve xarre ke SiKara para pahuMce Ora samuxra wata kI ora baDaZ gaye.
(defrule pass_xarrA
(declare (salience 700))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng  ?id  xarrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pass.clp  	pass_xarrA    " ?id "   xarrA  )" crlf))
)


;Added preeti(03-07-13)
;The helicopter made several passes over the village before landing.[ Oxford Advanced Learner's Dictionary]
;helikoptara ne avawaraNa se pahale gAzva ke kaI cakkara lagAye.
(defrule pass_cakkara
(declare (salience 800))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id   cakkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass_cakkara  "  ?id "  cakkara  )" crlf))
)

;Added preeti(03-07-13)
;In the first pass all the addresses are loaded into the database.[ Oxford Advanced Learner's Dictionary]
;praWama caraNa meM saBI pawe detAbesa meM Bare gaye.
(defrule pass_caraNa
(declare (salience 900))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pass)
(or(id-cat_coarse =(- ?id 1) number)(id-word =(- ?id 1) first|second|third))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass_caraNa  "  ?id "     caraNa  )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;The judge passed sentence.
;न्यायाधीश ने सजा सुनायी.
(defrule pass12
(declare (salience 3800))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 sentence)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pass.clp     pass12   "  ?id "  sunA )" crlf))
)

;#############################Defaults rule#######################################
;Added preeti(03-07-13)
;There is no admittance without a security pass.[ Oxford Advanced Learner's Dictionary]
;ek surakRA pAsa ke binA praveSa ki AjFA nahIM hE.
(defrule pass_pAsa
(declare (salience 500))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  pass.clp  	pass_pAsa   "  ?id " pAsa  )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;She has only a slim chance of passing the exam. 
;उसके पास परीक्षा उत्तीर्ण करने का सिर्फ एक छोटा अवसर है . 
(defrule pass11
(declare (salience 400))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?)
(viSeRya-of_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwIrNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass11  "  ?id "  uwwIrNa_kara  )" crlf))
)


;modified by Preeti (03-07-13)
;They waited for the storm to pass.[ Oxford Advanced Learner's Dictionary]
;unhoMne  AzXI ke  gujarane kI  prawIkRA kI.
(defrule pass_gujZara
(declare (salience 300))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gujZara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass_gujZara  "  ?id "  gujZara  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 4-1-2014
;The Principal of the College, after Gangaprasad, had passed out of the Medical College, recommendeds to the Military Secretary 
;to the Viceroy that Gangaprasad be given a part time appointment as a doctor in the Viceroy's establishment. [Gyannidhi]
(defrule pass19
(declare (salience 1100))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root =(+ ?id 1) out)
(kriyA-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwIrNa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass19  "  ?id "  uwwIrNa_ho  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 6-1-2014
;Another plane passed over our heads.  [Cambridge]
;दूसरा विमान हमारे सिर के ऊपर से गुजरा . 
(defrule pass13
(declare (salience 5000))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-over_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gujarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass13  "  ?id "  gujarA  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 6-1-2014
;She was eating only to pass the time.   [Cambridge]
;वह सिर्फ समय गुजारने के लिए खा रही थी.
(defrule pass14
(declare (salience 4950))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 time)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gujAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass14  "  ?id "  gujAra  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 6-1-2014
;I passed my driving test the first time.    [Cambridge]
;मैंने पहली बार अपना ड्राइविंग परीक्षण उत्तीर्ण करा . 
(defrule pass15
(declare (salience 5000))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 test|exam|examination|paper)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwIrNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass15  "  ?id "  uwwIrNa_kara  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 6-1-2014
;Donations have passed the one million mark.   [Cambridge]
;दान दस-लाख पार कर चुके हैं . 
(defrule pass16
(declare (salience 5000))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 mark|limit)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass16  "  ?id "  pAra_kara  )" crlf))
)

;$$$ Modified by Sonam Gupta MTech IT Banasthali 12-3-2014 (added resolution in ?id1)
;The United Nations passed a resolution to increase aid to the Third World.
;संयुक्त राष्ट्र ने विकासशील देश की सहायता के लिये प्रस्ताव पारित किया .
;@@@ Added by Sonam Gupta MTech IT Banasthali 6-1-2014
;They passed a law banning the sale of alcohol.   [Cambridge]
;उन्होंने मद्य की बिक्री पर प्रतिबन्ध लगाते हुए नियम पारित किया . 
(defrule pass17
(declare (salience 4950))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 law|resolution)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass17  "  ?id "  pAriwa_kara  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-1-2014
;They stepped aside to let her pass.   [Cambridge]
;उन्होंने उसे जाने देने के लिये रास्ता छोङा .
(defrule pass18
(declare (salience 4950))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 let)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAne_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass18  "  ?id "  jAne_xe  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
; It may be borne in mind that if an equation fails this consistency test it is proved wrong but if it passes it is 
;not proved right. [ncert]
;यह बात भी हमें स्पष्ट करनी चाहिए कि यदि कोई समीकरण सङ्गति परीक्षण में असफल हो जाती है तो वह गलत सिद्ध हो जाती है, 
;परन्तु यदि वह परीक्षण में सफल हो जाती है तो इससे वह सही सिद्ध नहीं हो जाती.
(defrule pass21
(declare (salience 4950))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?verb)
(kriyA-kriyA_viSeRaNa  ?verb ?id1)
(id-root ?id1 right|wrong)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass21  "  ?id "  saPala_ho  )" crlf))
)


;#############################################################Default rule###################################################################
;@@@ Added by Sonam Gupta MTech IT Banasthali 6-1-2014
;Could you pass the salt, please?   [Cambridge]
;क्या आप कृपया नमक दे सकते हैं? 
(defrule pass20
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " pass.clp	pass20  "  ?id "  xe  )" crlf))
)

;Additional Examples:
;She passes by my house on her way.(pass by)
;The river passes through our land.(pass through)
;Her brother passed on yesterday due to high fever.(pass on)

;################### Old Examples ####################
;"pass","V","1.gujZaranA"
;The street was so crowded that the traffic was unable to pass.
;Time has passed so quickly that we are surprised.
;--"2.haswAMwariwa karanA"
;Read && pass on the newspaper.
;--"3.pAra karanA"
;Pass the shop && you will be in front of  the school.
;--"4.uwwarAXikAra meM pAnA"
;I have inherited my nature as it passed from my father to me.
;--"5.uwwIrNa honA"
;I don't know much psychology but I have to pass my exam.
;--"6.maMjZUra honA"
;The bill should be passed in this session only.
;--"7.sahana karanA"
;Her provocative remarks passed without comment.
;
;
;LEVEL 
;
;
;Headword : pass
;                  ------
;Examples --
;
;`pass' ke viviXa prayoga--
;
;"pass","V","1.gujZaranA"
;The street was so crowded that the traffic was unable to pass.
;Time has passed so quickly that we are surprised.
;--"2.haswAMwariwa karanA"
;         ---- < gujAranA < gujaranA
;Read && pass on the newspaper.
;--"3.pAra karanA"
;         ---- < kisI sWala-viSeRa se gujaranA < gujaranA 
;Pass the shop && you will be in front of  the school.
;--"4.uwwarAXikAra meM pAnA"
;         ---- < gujarakara Awe hue ko vyakwi-viSeRa xvArA prApwa karanA < gujaranA 
;I have inherited my nature as it passed from my father to me.
;--"5.uwwIrNa honA"
;         ---- < gujarane meM saPala honA < gujaranA 
;I don't know much psychology but I have to pass my exam.
;--"6.maMjZUra honA"
;         ---- < gujarawe hue saPala honA < gujaranA 
;The bill should be passed in this session only.
;--"7.sahana karanA"
;         ---- < kinhIM BAva-viSeRoM kA prawikriyA ke uwpanna
;                                        kiye binA gujAranA < gujaranA 
;Her provocative remarks passed without comment.
;--------------------------------------------------------
;
;sUwra : uwwIrNa_honA[<gujaranA<Age_baDZanA`]
;-----------------
;
;    `pass' Sabxa ke Upara ke viviXa prayoga aMgrejI meM hEM . inakA hinxI meM 
;alaga-alaga arWa samaJA jAwA hE, punarapi eka samAna BAva saBI arWoM meM sAmAnya 
;lagawA hE . vaha BAva gujarane kA hE . Upara kI saBI kriyAoM meM gujarane kA BAva
;samaJA jA sakawA hE, jisase arWa-viswAra huA hE . 
;
;-- haswAnwariwa karanA . haswAnwariwa karane meM vaswu kA eka hAWa se xUsare hAWa meM 
;gujAranA howA hE . 
;
;-- pAra karanA . kisI sWala-viSeRa se gujarakara usa kriyA kA samApwa karanA   
;pAra karanA kahalAwA hE .
;
;-- uwwarAXikAra meM pAnA . Upara se gujarakara AwI huI cIja ko kisIke xvArA 
;prApwa karanA uwwarAXikAra meM pAnA howA hE .
;
;-- uwwIrNa honA . kisImeM se gujarane meM saPala honA . parIkRA Axi meM uwwIrNa 
;honA arWAw usameM se gujarane meM saPala honA hI mAnA jAwA hE . 
;
;-- maMjUra honA . maMjUra hone kI prakriyA meM praswAva yA anya kisI kA eka xUsare 
;ke pAsa se gujarawe hue usakA saPala honA howA hE . yA PAIloM Axi kA eka xUsare
;ke pAsa se gujarane, se isakA arWa-viswAra socA jA sakawA hE .   
;       
;-- sahana karanA .  kinhIM BAvoM kA binA prawikriyA(bAharI) ke gujAranA sahana 
;karanA kahalAwA hE .   
;
;
