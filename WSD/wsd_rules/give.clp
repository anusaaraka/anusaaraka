;File modified by Meena(28.01.10); deleted the duplicate rules.
(defrule give0
(declare (salience 5000))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id given )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xiyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  give.clp  	give0   "  ?id "  xiyA_huA )" crlf))
)

(defrule give1
(declare (salience 4900))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id given )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  give.clp  	give1   "  ?id "  AxI )" crlf))
)

;"given","Adj","1.AxI"
;He is given to drinking alcohol.
;--"2.niSciwa"
;The doctor arrived on the given time.
;
;
(defrule give2
(declare (salience 4800))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 iwwaPZAka_se_pawA_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give2  "  ?id "  " ?id1 "  iwwaPZAka_se_pawA_cala  )" crlf))
)

;He gave away our hiding -place.
;use hamAre Cipane kA sWAna iwwaPZAka se pawA cala gayA
(defrule give3
(declare (salience 4700))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAra_mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give3  "  ?id "  " ?id1 "  hAra_mAna_le  )" crlf))
)

;You'll never give the answer.Do you give in?
;wuma isa praSna kA uwwara kaBI BI nahIM xe pAoge ,kyA wuma hAra mAnawe ho ?
(defrule give4
(declare (salience 4600))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give4  "  ?id "  " ?id1 "  xe  )" crlf))
)

;This fire is giving off a lot of smoke.
;yaha Aga bahuwa sA XuAz xe rahI hE
(defrule give5
(declare (salience 4500))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KZawma_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give5  "  ?id "  " ?id1 "  KZawma_ho  )" crlf))
)

;My money gave out due to extravagence.
;PijZUlaKarcI kI vajaha se merA pEsA KZawma ho gayA
(defrule give6
(declare (salience 4400))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give6  "  ?id "  " ?id1 "  bAzta  )" crlf))
)

;He gave out many blankets to the poor people on his daughter's birthday.
;apanI puwrI ke janmaxivasa para usane bahuwa se garIboM ko kaMbala bAzte
(defrule give7
(declare (salience 4300))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give7  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;Can you give over drinking (alcohal) ? It's spoiling your health.
;kyA wuma SarAba pInA CodZa sakawe ho?yaha wumhArA svAsWaya KZarAba kara rahI hE
(defrule give8
(declare (salience 4200))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give8  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;You must give up smoking! it's injurious to health.
;wumheM XUmrapAna CodZa xenA cAhie ,yaha sehawa ke lie hAnikAraka hE
(defrule give9
(declare (salience 4100))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give9  "  ?id "  " ?id1 "  xe  )" crlf))
)



(defrule give10
(declare (salience 3900))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 evidence)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gavAhI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give10  "  ?id "  " ?id1 "  gavAhI_xe  )" crlf))
)



(defrule give11
(declare (salience 3700))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give11  "  ?id "  " ?id1 "  bAhara_nikala  )" crlf))
)



(defrule give12
(declare (salience 3500))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give12  "  ?id "  " ?id1 "  pahuzcA  )" crlf))
)


(defrule give13
(declare (salience 3300))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 opinion)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rAya_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give13  "  ?id "  " ?id1 "  rAya_xe  )" crlf))
)



(defrule give14
(declare (salience 2900))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 shelter)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ASraya_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give14  "  ?id "  " ?id1 "  ASraya_xe  )" crlf))
)



(defrule give15
(declare (salience 2700))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Coda_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give15  "  ?id "  " ?id1 "  Coda_xe  )" crlf))
)



(defrule give16
(declare (salience 2500))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 way)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give16  "  ?id "  " ?id1 "  tUta_jA  )" crlf))
)


(defrule give17
(declare (salience 2300))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vApisa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " give.clp	give17  "  ?id "  " ?id1 "  vApisa_xe  )" crlf))
)




;Earlier hAranA was there, however, Coda_xenA is more appropriate; hAranA follows from Coda_xenA
;PP_null_up && category=verb	hAra	100


(defrule give18
(declare (salience 1800))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 try)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  give.clp 	give18   "  ?id "  kara )" crlf))
)

;He gave it a try.
(defrule give19
(declare (salience 1700))
(id-root ?id give)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  give.clp 	give19   "  ?id "  xe )" crlf))
;(assert (kriyA_id-object2_viBakwi ?id ko))
)

;default_sense && category=verb	xe	0
;"give","VT","1.xenA"
;Give me a pen please.
;
;
