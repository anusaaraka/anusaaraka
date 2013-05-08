;Added by Sukhada. (8-2-13)
;Ex. What is the probability of tossing a fair coin twice in a row and getting heads both times? 
(defrule both_times
(declare (salience 5000))
(id-word ?id times)
(id-word ?id1 both)
(viSeRya-det_viSeRaNa ?id ?id1)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xonoM_bAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* " time.clp  both_times " ?id " " ?id1 " xonoM_bAra )" crlf))
)




;Added by Meena(6.9.10)
;This time tomorrow I will be in Canada . 
;This time I am determined to give a simple sentence for testing .
(defrule time00
(declare (salience 5000))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) this)
(idiom_type_1  =(- ?id 1) ?id)
(or(id-root =(+ ?id 1) ?root)(id-root =(+ ?id 2) ?root)(id-root =(+ ?id 3) ?root))
=>
(if (eq ?root tomorrow)  then
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) isa_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-wsd_root_mng   " ?*wsd_dir* " time.clp  time00  "  ?id " "(- ?id 1)" isa_samaya  )" crlf))
else
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) isa_bAra))
)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-wsd_root_mng   " ?*wsd_dir* " time.clp  time00  "  ?id " "(- ?id 1)" isa_bAra)" crlf))
)



;Commented by Meena (6.9.10)
;Added by Meena(6.9.10)
;This time tomorrow I will be in Canada . 
;(defrule time0
;(declare (salience 5000))
;(id-root ?id time)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(- ?id 1) this|that)
;(idiom_type_1  =(- ?id 1) ?id)
;(id-root ?id1 tomorrow|year|day|yesterday|week|month)
;(test(> ?id1 ?id))
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) isa_samaya))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-wsd_root_mng   " ?*wsd_dir* " time.clp  time0  "  ?id " "(- ?id 1)" isa_samaya  )" crlf))
;)





;Commented by Meena (6.9.10)
;Added by Meena(6.9.10)
;This time I am determined to give a simple sentence for testing .
;(defrule time1
;(declare (salience 4500))
;(id-root ?id time)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(- ?id 1) this|that)
;(idiom_type_1  =(- ?id 1) ?id)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) isa_bAra))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-wsd_root_mng   " ?*wsd_dir* " time.clp  time1  "  ?id " "(- ?id 1)" isa_bAra  )" crlf))
;)



;Added by Meena(11.8.10)
;We have a standing invitation to visit them any time .
(defrule time2
(declare (salience 5000))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) any)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) kisI_BI_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " time.clp  time2  "  ?id "  " (- ?id 1) "  kisI_BI_samaya  )" crlf))
)





(defrule time3
(declare (salience 5000))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) ancient|the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAla))
(assert (id-wsd_number ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  time.clp 	time3   "  ?id "  kAla )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  time.clp      time1   "  ?id "  s )" crlf))
)


(defrule time4
(declare (salience 4800))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  time.clp 	time4   "  ?id "  samaya )" crlf))
)

;At the time of evolution.
(defrule time5
(declare (salience 4700))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id times )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id guNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  time.clp  	time5   "  ?id "  guNA )" crlf))
)

;"times","N","1.guNA"
;This room is two times bigger than the hall.
;
(defrule time6
(declare (salience 4600))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  time.clp 	time6   "  ?id "  samaya )" crlf))
)

;Added by sheetal
(defrule time7
(declare (salience 4650))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root =(- ?id 2) lot)
(viSeRya-of_saMbanXI  =(- ?id 2) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  time.clp      time7   "  ?id "  - )" crlf))
)
;Some people take a lot of time to acclimatize themselves to the new environment .


;"time","N","1.samaya"
;This time he succeeded.
;--"2.vakwa{GadZI_meM}"
;Do you know what time it is?.
;--"3.kuCa_samaya_waka"
;He had a time holding back the tearso.
;--"4.avasara"
;University stay was a good time for us.
;--"5.yuga"
;How time is changing.
;--"6.koI_niSciwa_samaya"
;Childhood is the best time of life.
;--"7.samaya_kI_gaNanA_karane_kI_SElI"
;Geenwich time.
;--"8.kAla"
;The building will stand the time.
;
;
