
(defrule step0
(declare (salience 5000))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIce_uwara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " step.clp step0 " ?id "  nIce_uwara )" crlf)) 
)

(defrule step1
(declare (salience 4900))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp	step1  "  ?id "  " ?id1 "  nIce_uwara  )" crlf))
)

(defrule step2
(declare (salience 4800))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna_CodZa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " step.clp step2 " ?id "  sWAna_CodZa )" crlf)) 
)

(defrule step3
(declare (salience 4700))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAna_CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp	step3  "  ?id "  " ?id1 "  sWAna_CodZa  )" crlf))
)

(defrule step4
(declare (salience 4600))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-back_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe_jA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " step.clp step4 " ?id "  pICe_jA )" crlf)) 
)

;$$$ Modified by 2014 WSD workshop participants under Sukhada's guidance (13-01-14)
;Removed kriyA-upasarga relation instead used ?id +1 
;Anna steped back.
(defrule step5
(declare (salience 4500))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) back)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) pICe_hata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp	step5  "  ?id "  " (+ ?id 1) "  pICe_hata_jA  )" crlf))
)

;$$$ Modified by 2014 WSD workshop participants under Sukhada's guidance (13-01-14)
;Changed meaning from 'sWAna_CodZa' to 'pEra_raKa'
;Fools rush in where angels fear to tread/step.
;jahAz PZariSwe BI pEra raKane se darawe hEM vahAz mUrKa kUxa padawe hEM
(defrule step6
(declare (salience 100))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp 	step6   "  ?id "  pEra_raKa )" crlf))
)

;@@@ Added by Jan 2014 workshop participants under Sukhada's guidance (17-01-14)
;They stepped aside to let her pass.
;ve use nikal jAne xene ke liye pICe hata gaye
(defrule step_aside
(declare (salience 4400))
(id-root ?id step)
(kriyA-upasarga ?id ?upasaraga)
(id-root ?upasarga aside)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?upasarga pICe_hata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp  step_aside  "  ?id "  " ?upasarga "  pICe_hata_jA )" crlf))
)

;@@@ Added by Jan 2014 workshop participants under Sukhada's guidance (17-01-14)
;Please step away from the door. 
; kqpayA xaravAje se xUra hata jAiye.
(defrule step_away
(declare (salience 4400))
(id-root ?id step)
(kriyA-upasarga ?id ?upasaraga)
(id-root ?upasarga away)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?upasarga xUra_hata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp  step_away  "  ?id "  " ?upasarga "  xUra_hata_jA )" crlf))
)

;@@@ Added by Jan 2014 workshop participants under Sukhada's guidance (17-01-14)
;He stepped outside for a moment.
; vaha pala Bara ke liye bAhara nikalA.
(defrule step_outside
(declare (salience 4400))
(id-root ?id step)
(kriyA-upasarga ?id ?upasaraga)
(id-root ?upasarga outside) 
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?upasarga bAhara_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp  step_outside  "  ?id "  " ?upasarga "  bAhara_nikala )" crlf))
)


;@@@ Added by Jan 2014 workshop participants under Sukhada's guidance (17-01-14)
;Step in my office for a minute.
;mere xaPZwara meM eka minita ke liye Aiye.
(defrule step_in
(declare (salience 4400))
(id-root ?id step)
(kriyA-in_saMbanXI  ?id ?id1)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " step.clp  step_in  "  ?id "    A )" crlf))
)



;Salience reduced by Jan 2014 workshop participants under Sukhada's guidance (17-01-14)
(defrule step7
(declare (salience 100))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaxama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp 	step7   "  ?id "  kaxama )" crlf))
)

;"step","N","1.kaxama"
;She took a step towards the laboratory.
;--"2.kAryavAhI"
;The government took serious steps to check the dacoits.
;--"3.sopAna"
;I made the rangoli in three steps.
;
;

;Added by sheetal(11-12-2009).
(defrule step8
(declare (salience 4350))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 document)
(id-cat_coarse ?id1 verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp      step8   "  ?id "  caraNa )" crlf))
)
;The parents documented every step of their child's development .

;@@@ Added by jagriti(30.12.2013)
;I stepped into the house .
;मैंने घर के अन्दर कदम रखा .
(defrule step9
(declare (salience 4450))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI ?id ?) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaxama_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp 	step9   "  ?id "  kaxama_raKa )" crlf))
)

;@@@ Added by jagriti(30.12.2013)
;In her hurry she stepped on a spot of oil and slid right up to him across the floor of the shop.
;जल्दबाजी में उसने नीचे गिरे तेल के ऊपर पैर रख दिया अौर दुकान के फर्श पर फिसल गयी.
(defrule step10
(declare (salience 4455))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  pEra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp 	step10   "  ?id "  pEra_raKa )" crlf))
)

;@@@ Added by jagriti(30.12.2013)
;She is always stepping on others to get ahead. [iit-bombay]
;वह आगे बढ़ने के लिए हमेशा दूसरों के साथ दुर्व्यवहार करती है.
(defrule step11
(declare (salience 4460))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-with_saMbanXI ?id ?id1)(kriyA-on_saMbanXI ?id ?id1))
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  xurvyavahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp 	step11   "  ?id "  xurvyavahAra_kara )" crlf))
)

;@@@ Added by jagriti(31.12.2013)
;When Minakshi's turn came, she stepped forward.
;जब रानी की पगार लेने की बारी आयी तो वह आगे बढ़ी।
(defrule step12
(declare (salience 4466))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa ?id ?id1)
(id-root ?id1 forward)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp 	step12   "  ?id "  baDZa )" crlf))
)

;@@@ Added by Jan 2014 workshop participants under Sukhada's guidance (17-01-14)
;I heard steps on the stairs.
(defrule step_hear
(declare (salience 4950))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(id-root ?kri hear)
(not (viSeRya-jo_samAnAXikaraNa ?id ?jo_samAnAXikaraNa)) ;I would like to hear the steps which you have taken. Hindi: mEM una kaxamoM ke bAre meM sunanA cAhUzgA jo Apane UTAye hEM.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaxamoM_kI_Ahata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp      step_hear   "  ?id "  kaxamoM_kI_Ahata )" crlf))
)


;@@@ Added by Jan 2014 workshop participants under Sukhada's guidance (18-01-14)
;Time to step in before things gets out of hand.
(defrule step_in1
(declare (salience 4950))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?upasarga)
(id-root ?upasarga in)
(not (kriyA-object  ?id ?obj))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?upasarga haswakRepa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp  step_in1  "  ?id "  " ?upasarga "  haswakRepa_kara )" crlf))
)

;@@@ Added by jagriti(21.1.2014)
;She stepped onto the bus.
;वह बस पर चढ़ी.
(defrule step13
(declare (salience 4465))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-onto_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDZa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp 	step13   "  ?id "  caDZa )" crlf))
)
