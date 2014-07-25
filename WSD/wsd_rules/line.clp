
(defrule line0
(declare (salience 5000))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lining )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aswara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  line.clp  	line0   "  ?id "  aswara )" crlf))
)

;"lining","N","1.aswara"
;Use a thin lining for the curtains to give them a neat fall.
;
;
(defrule line1
(declare (salience 4900))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 paMkwi_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " line.clp	line1  "  ?id "  " ?id1 "  paMkwi_banA  )" crlf))
)

;The children lined up for the prayer.
;baccoM ne prArWanA ke lie paMkwi banAI
(defrule line2
(declare (salience 4800))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ikatTA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " line.clp	line2  "  ?id "  " ?id1 "  ikatTA_kara  )" crlf))
)

;The books were lined up neatly in the almirah.
;alamArI meM kiwAbeM sahI warIke se ikatTI kI huIM WIM
;Commented by Nandini
;(defrule line3
;(declare (salience 4700))
;(id-root ?id line)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 up)
;(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by ;Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id paMkwi_banA));Automatically modified ;'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's ;program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " line.clp line3 ;" ?id "  paMkwi_banA )" crlf)) 
;)

(defrule line4
(declare (salience 4600))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 paMkwi_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " line.clp	line4  "  ?id "  " ?id1 "  paMkwi_banA  )" crlf))
)

(defrule line5
(declare (salience 4500))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  line.clp 	line5   "  ?id "  lAina )" crlf))
)

;"line","N","1.lAina/reKA"
;A horizontal line.
;--"2.sImA-reKA"
;The crossed the line && so he was declared out.
;--"3.surakRA-paMkwiyAz"
;In battle fields there are different lines of defence.
;--"4.paMkwi"
;Stand in a line. There are ten words in this line.
;--"5.vaMSAvalI"
;He comes from a family with a line of sportsmen.
;--"6.dorI/wAra"
;Fishing line; telephone line.
;--"7.patarI"
;Line of train.
;--"8.praNAlI"
;We are not sure which line of action he is going to adopt in this matter.
;--"9.parivahana_kampanI"
;A shipping line.
;--"10.vyavasAya"
;He has chosen business as his line.
;--"11.kRewra"
;He is joining a technical line.
;--"12.viSeRa_xUrasaMcAra_sevA"
;He talked on the hotline.
;
(defrule line6
(declare (salience 4400))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reKA_KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  line.clp 	line6   "  ?id "  reKA_KIMca )" crlf))
)

;"line","V","1.reKA_KIMcanA"
;Draw a line joining A && B.
;--"2.aswara_lagAnA"
;A woollen blanket gives more warmth when lined up with a cotton sheet.
;

;@@@--- Added by Nandini(29-4-14)
;He has fine lines around his eyes. [OLAD]
;usake AzKoM ke chAroM ora JurriyAz hEM.
(defrule line7
(declare (salience 4580))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-around_saMbanXI  ?id ?id1)
(id-root ?id1 eye)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JurrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  line.clp 	line7   "  ?id "  JurrI )" crlf))
)

;@@@--- Added by Nandini(29-4-14)
;He was convicted of illegally importing weapons across state lines.[OLAD]
;usako avEXa rUpa se rAjya kI sImA ke pAra aswra AyAwa karanA kA aparAXI TaharAyA gayA WA.
(defrule line8
(declare (salience 4580))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 state|district|county)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  line.clp 	line8   "  ?id "  sImA )" crlf))
)

;@@@--- Added by Nandini(29-4-14)
;He is joining a technical line.[hinKoj]
;usane eka wakanIkI- kRewra meM praveSa kiyA hE.
(defrule line9
(declare (salience 4580))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 join)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  line.clp 	line9   "  ?id "  kRewra )" crlf))
)

;@@@--- Added by Nandini(29-4-14)
;He traced the line of her jaw with his finger.[OLAD]
;usane apanI ufgalIyoM se usake jabade kI rupa reKA banAI.
(defrule line10
(declare (salience 4580))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 trace)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rupa_reKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  line.clp 	line10   "  ?id "  rupa_reKA )" crlf))
)

;@@@--- Added by Nandini(29-4-14)
;He has chosen business as his line.[OLAD]
;usane uxyoga ko vyavasAya kI waraha cunA hE.
(defrule line11
(declare (salience 4580))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI  ?id1 ?id)
(id-root ?id1 choose)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  line.clp 	line11   "  ?id "  vyavasAya )" crlf))
)

;@@@--- Added by Nandini(29-4-14)
;I do not follow your line of reasoning.[OLAD]
;mEM warka viwarka kI ApakI xiSA kA anusaraNa_nahIM karawA .
(defrule line12
(declare (salience 4580))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id ?id2)
(id-root ?id2 reasoning|argument|attack|defence|enquiry|inquiry)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  line.clp 	line12   "  ?id "  xiSA )" crlf))
)

;@@@--- Added by Nandini(29-4-14)
;We are starting a new line in casual clothes.
;hama sahaja vaswroM meM eka nayA uwpAxa Suru_kara rahe hEM.
(defrule line13
(declare (salience 4580))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(viSeRya-in_saMbanXI  ?id ?id2)
(id-root ?id1 start)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  line.clp 	line13   "  ?id "  uwpAxa )" crlf))
)

;@@@--- Added by Nandini(29-4-14)
;A woollen blanket gives more warmth when lined up with a cotton sheet . 
;jaba suwI cAxara kA aswara lagA howA hE waba UnI kambala Ora garmI xewA hE .
(defrule line14
(declare (salience 4950))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-with_saMbanXI  ?id ?id2)
(id-root ?id2 sheet)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aswara_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " line.clp	line14  "  ?id "  " ?id1 "  aswara_lagA  )" crlf))
)





