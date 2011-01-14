
(defrule put0
(declare (salience 5000))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put0  "  ?id "  " ?id1 "  PElA  )" crlf))
)

;They put about that she was married.
;unhoneM PElA xiyA ki usakI SAxI ho gaI
(defrule put1
(declare (salience 4900))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiSA_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put1  "  ?id "  " ?id1 "  xiSA_baxala  )" crlf))
)

;They put about && went for home.
;unhoneM xiSA baxalI Ora Gara cale gae
(defrule put2
(declare (salience 4800))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put2  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;She put aside her sketch for having her dinner.
;usane apanA nakSA Bojana lena hewu CodZa xiyA
(defrule put3
(declare (salience 4700))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vApisa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put3  "  ?id "  " ?id1 "  vApisa_raKa  )" crlf))
)

;Did you put my dress back in my cupboard?
;kyA wumane merI poSAka alamArI meM vApisa raKa xI?
(defrule put4
(declare (salience 4600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vApisa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put4  "  ?id "  " ?id1 "  vApisa_raKa  )" crlf))
)

;Did you put my dress back in my cupboard?
;kyA wumane merI poSAka alamArI meM vApisa raKa xI?
(defrule put5
(declare (salience 4500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put5  "  ?id "  " ?id1 "  bacA  )" crlf))
)

;She has put by some money for her daughter's marriage.
;usane apanI puwrI kI SAxI hewu kuCa rUpayA bacA kara raKA hE
(defrule put6
(declare (salience 4400))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put6  "  ?id "  " ?id1 "  xabA  )" crlf))
)

;Please put down this issue right now.
;kqpyA isa muxxe ko aBI xabA xo
(defrule put7
(declare (salience 4300))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nivexana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put7  "  ?id "  " ?id1 "  nivexana_kara  )" crlf))
)

;He's putting in for that grant.
;vaha grAMta ke lie nivexana kara rahA hE
(defrule put8
(declare (salience 4200))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put8  "  ?id "  " ?id1 "  baMxa_kara  )" crlf))
)

;Please put the fan off.
;kqpyA paMKA baMxa kara xo
(defrule put9
(declare (salience 4100))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put9  "  ?id "  " ?id1 "  baDZA  )" crlf))
)

;He put out his hand to hold her.
;usane apanA hAWa use pakadZane ke lie baDZA xiyA
(defrule put10
(declare (salience 4000))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put10  "  ?id "  " ?id1 "  jodZa  )" crlf))
)

;The kettle broke,but i managed to put it together again.
;kewalI tUta gaI WI paraMwu mEne use xobArA se jodZa xiyA
(defrule put11
(declare (salience 3900))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put11  "  ?id "  " ?id1 "  saha  )" crlf))
)

;I cannot put up with all the noise.
;mEM yaha Sora sahana nahIM kara sakawA
(defrule put12
(declare (salience 3800))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KadZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put12  "  ?id "  " ?id1 "  KadZA_kara  )" crlf))
)

;He is putting up a new building.
;vaha eka naI imArawa KadZI kara rahA hE
(defrule put13
(declare (salience 3700))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put13  "  ?id "  " ?id1 "  baDZA  )" crlf))
)

;Don't put up the price again.
;kImawa ko xobArA mawa baDZAo
(defrule put14
(declare (salience 3600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put14  "  ?id "  " ?id1 "  xe  )" crlf))
)

;He promised to put up the money for charity.
;usane canxe ke lie pEse xene kA vAyaxA kiyA
(defrule put15
(declare (salience 3500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 question)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put15   "  ?id "  pUCa )" crlf))
)

(defrule put16
(declare (salience 3400))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 query)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put16   "  ?id "  pUCa )" crlf))
)



;Added by Meena(4.09.09)
;He took all her letters into the yard and put a match to them . 
(defrule put17
(declare (salience 3400))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 match)
(kriyA-object ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(rule_name-id-wsd_root_mng    put17   "  ?id "  lagA_xe )" crlf))
)



;Nobody could stop him from putting that question again && again.
(defrule put18
(declare (salience 3300))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put18   "  ?id "  raKa )" crlf))
)

;"put","V","1.raKanA"
;He put the magazine aside && turned to speak to me.
;--"2.mahawwA xenA"
;our company puts the emphasis on communication skills.
;--"3.vyakwa karanA"
;I put a clear statement on this issue.
;--"4.PeMkanA"
;My leg was fractured while I was putting the shot-put.
;
;
