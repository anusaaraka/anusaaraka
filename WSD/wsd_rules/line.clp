
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
(defrule line3
(declare (salience 4700))
(id-root ?id line)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 paMkwi_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " line.clp	line3  "  ?id "  " ?id1 "  paMkwi_banA  )" crlf))
)

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
