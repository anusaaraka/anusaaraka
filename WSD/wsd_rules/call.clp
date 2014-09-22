;------------------------------------------- Multi word --------------------------------------------------
;@@@ Added by Anita 
;I called for the bill in the restaurant.
;मैंने भोजनालय में बिल मँगवाया .
(defrule call_for
(declare (salience 5000))
(id-root ?id call )
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI ?id ?)
(id-word =(+ ?id 1) for)
(kriyA-in_saMbanXI ?id ?sam)
(id-root ?sam  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) mazgavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call_for "  ?id "  " (+ ?id 1) "  mazgavA )" crlf))
)

;@@@ Added by Anita
;The opposition have called for him to resign. oxford dictionary
;विपक्ष ने उससे त्याग-पत्र देने की माँग की ।
;They called for the immediate release of the hostages. oxford dictionary
;उन्होंने बन्धक व्यक्तियों की तात्कालिक रिहाई की माँग की ।
;The situation calls for prompt action.  oxford dictionary
;स्थिति तुरन्त कार्यवाही की माँग करती है।
(defrule call_for1
(declare (salience 4950))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI ?id ?id2)
(id-root ?id2 ?w&~doctor);The critical situation of the patient must call for a doctor.
(id-word =(+ ?id 1) for)
(kriyA-subject  ?id ?id1)
(id-word ?id1 opposition|situation|they)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) mAzga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call_for1 "  ?id "  " (+ ?id 1) "  mAzga_kara  )" crlf))
)



;The critical situation of the patient must call for a doctor.
;marIjZa ko isa gazBIra sWiwi meM dAktara kI AvaSyakawA hE
(defrule call1
(declare (salience 4400))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AvaSyakawA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call1  "  ?id "  " ?id1 "  AvaSyakawA_ho  )" crlf))
)

(defrule call12
(declare (salience 4300))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jarUrawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call12  "  ?id "  " ?id1 "  jarUrawa_ho  )" crlf))
)

;Commented by Shirisha Manju : conflict sentence : Applicants for posts are called for interview.
;(defrule call11
;(declare (salience 4200)) ;Salience changed from 3900 to 4200 by Roja 07-11-13. Ex: The soldiers were called out for the war. Ex: Applicants for posts are called for interview. (Note: This rule need to be improved.) 
;(id-root ?id call)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 for)
;(kriyA-for_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id jarUrawa_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " call.clp call11 " ?id "  jarUrawa_ho )" crlf))
;)

;--------------------------------------------------------------------------------------------------------------------------
;@@@ Added by Anita
;A new team of detectives were called in to conduct a fresh inquiry.
;जासूसों की एक नई टीम को नए सिरे से जांच का संचालन करने में सहायता करने के लिए बुलाया गया ।
(defrule call_in
(declare (salience 5000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 in)
(id-word =(+ ?id 2) to)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) sahAyawA_ke_lie_bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call_in "  ?id "  " (+ ?id 1) "  sahAyawA_ke_lie_bulA )" crlf))
)


(defrule call2
(declare (salience 4900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call2  "  ?id "  " ?id1 "  bulA  )" crlf))
)

;Call in the doctor,patient is in critical condition.
;dAktara ko bulAo ,marIjZa kI sWiwi bahuwa gazBIra hE
(defrule call16
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call16  "  ?id "  " ?id1 "  bulA  )" crlf))
)

(defrule call15
(declare (salience 4700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " call.clp call15 " ?id "  bulA )" crlf))
)

;@@@ Added by Anita
;Cars with serious faults have been called in by the manufacturers. oxford dictionary
;गंभीर कयों वाली कारों को निर्माताओं द्वार गया ।' ले लिया 
(defrule call_in1
(declare (salience 4500))
(id-root ?id call )
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) in)
(id-word =(+ ?id 2) by)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) vApasa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call_in1 "  ?id "  " (+ ?id 1) "  vApasa_le )" crlf))
)

;----------------------------------------------------------------------------------------------------------------
;@@@ Added by Anita
;Please call your dog off .
;कृपया अपने कुत्ते को वापस बुलाओ ।
(defrule call_off
(declare (salience 5000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 off)
(kriyA-object ?id ?obj)
(id-root ?obj  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vApasa_bulA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp call_off  "  ?id "  " ?id1 "  vApasa_bulA  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  call.clp  call_off   "  ?id " ko )" crlf)
)


;The class's being called off.
;kakRA raxxa kara xI gayI
(defrule call3
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 raxxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call3  "  ?id "  " ?id1 "  raxxa_kara  )" crlf))
)

;(defrule call20
;(declare (salience 3000))
;(id-root ?id call)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 off)
;(kriyA-upasarga ?id ?id1)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banxa_kara))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call20  "  ?id "  " ?id1 "  banxa_kara  )" crlf))
;)
;

;Please call your dog off .
;kqpyA apane kuwwe ko sazBAlo
(defrule call4
(declare (salience 4900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sazBAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call4  "  ?id "  " ?id1 "  sazBAla  )" crlf))
)

(defrule call19
(declare (salience 4700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banxa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " call.clp call19 " ?id "  banxa_kara )" crlf))
)

;---------------------------------------------------------------------------------------------
;They called on God for help.
;unhone ISvara se maxaxa kI mAzga kI
(defrule call5
(declare (salience 4900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAzga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call5  "  ?id "  " ?id1 "  mAzga_kara  )" crlf))
)

(defrule call22
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 milane_Gara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call22  "  ?id "  " ?id1 "  milane_Gara_jA  )" crlf))
)

(defrule call21
(declare (salience 4700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milane_Gara_jA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " call.clp call21 " ?id "  milane_Gara_jA )" crlf))
)
;---------------------------------------------------------------------------------------------
;@@@ Added by Anita
;He called out a warning from the kitchen.  -oxford dictionary
;उसने रसोईघर से चेतावनी दी ।
(defrule call_out
(declare (salience 5000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 out)
(kriyA-object  ?id ?obj)
(id-root ?obj warning)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call_out "  ?id "  " ?id1 "  xe)" crlf))
)

;The sodiers were called out for the war.
;sEnikoM ko yuxXa ke lie bulAyA gayA
(defrule call6
(declare (salience 4900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call6  "  ?id "  " ?id1 "  bulA  )" crlf))
)

(defrule call24
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call24  "  ?id "  " ?id1 "  bulA  )" crlf))
)

(defrule call23
(declare (salience 4700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " call.clp call23 " ?id "  bulA )" crlf))
)

;---------------------------------------------------------------------------------------------
;@@@ Added by Anita  
;She called up her last reserves of strength.  -oxford dictionary
;उसने अपनी अवशिष्ट शक्ति को जुटाया ।
(defrule call_up
(declare (salience 5200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-object ?id ?obj)
(viSeRya-viSeRaNa  ?obj ?id2)
(id-root ?id2 last)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 jutA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* " call.clp  call_up  " ?id "  " ?id1"  "?id2" jutA)" crlf))
)

;$$$ Modified by Anita
;added 'kriyA-kAlavAcI' relation
;Seeing her studying called up my exam days
;use paDZawA xeKa muJe apane imwihAna ke xina yAxa A gae
;The smell of the sea called up memories of her childhood.
(defrule call7
(declare (salience 5200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(or (kriyA-object ?id ?id2)(kriyA-kAlavAcI ?id ?id2))
(id-root ?id2 memory|day) ;added by Anita
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call7  "  ?id "  " ?id1 "  yAxa_kara  )" crlf))
)

;$$$ Modified by Anita 
;added 'kriyA-kriyA_viSeRaNa' relation
;She called me up yesterday morning for the party.
;उसने पार्टी के लिए कल सुबह मुझे टेलिफोन किया ।
(defrule call8
(declare (salience 5100))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-kriyA_viSeRaNa ?id ?id1)(kriyA-upasarga ?id ?id1))
(id-word ?id1 up)
(kriyA-object ?id ?obj)
(id-root ?obj  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))) ; added by Anita
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call8  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

;@@@ Added by Anita 
;I called his address up on the computer.   oxford dictionary
;मैंने उसका पता सङ्गणक से लेकर मालुम किया ।
(defrule call_up1
(declare (salience 5100))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-object ?id ?obj)
(id-root ?obj  ?str)
(test (and (not (numberp ?str))(neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAluma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call_up1  "  ?id "  " ?id1 "  mAluma_kara  )" crlf))
)

;I will call up again later.
;मैं फिर से बाद में टेलिफोन करूँगा ।
(defrule call28
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call28  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

(defrule call27
(declare (salience 4700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id telIPona_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " call.clp call27 " ?id "  telIPona_kara )" crlf))
)

;---------------------------------------------------------------------------------------------

(defrule call10
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAwe-jAwe_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call10  "  ?id "  " ?id1 "  jAwe-jAwe_mila  )" crlf))
)


(defrule call9
(declare (salience 4700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-by_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAwe-jAwe_mila));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " call.clp call9 " ?id "  jAwe-jAwe_mila )" crlf)) 
)

;---------------------------------------------------------------------------------------------
(defrule call13
(declare (salience 4700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-forth_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " call.clp call13 " ?id "  xiKA )" crlf)) 
)

;$$$ Modified by Anita 
;Changed meaning from 'xiKA' to 'uwpanna_kara'
;His speech called forth an angry response.  -oxford dictionary
;उनके भाषण ने एक नाराज़गी की प्रतिक्रिया उत्पन्न की ।
(defrule call14
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwpanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call14  "  ?id "  " ?id1 "  uwpanna_kara  )" crlf))
)
;---------------------------------------------------------------------------------------------
(defrule call17
(declare (salience 4700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 names)
(kriyA-names_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAlI_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " call.clp call17 " ?id "  gAlI_xe )" crlf)) 
)

(defrule call18
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 names)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gAlI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call18  "  ?id "  " ?id1 "  gAlI_xe  )" crlf))
)

;@@@ Added by Anita
;They called me names.
;उन्होंने मेरे नाम पुकारे. (or उन्होंने मुझे गाली दी )
;John was punished for calling his teacher names.
;जॉन को अपने शिक्षक को गाली देने के लिए दंड दिया गया ।
;Billy cried when the other kids called him names.
;बिली ज़ोर से रोया जब दूसरे बच्चों ने उसको गाली दी ।
(defrule call_names
(declare (salience 4500))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-object  ?id ?id1)(kriyA-kqxanwa_karma ?id ?id1))
(id-word ?id1 names)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id1 gAlI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp      call_names  "  ?id "  " ?id1 "  gAlI_xe  )" crlf))
)

;---------------------------------------------------------------------------------------------
(defrule call25
(declare (salience 4700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-over_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_jora_se_pukAra));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " call.clp call25 " ?id "  jora_jora_se_pukAra )" crlf)) 
)

(defrule call26
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jora_jora_se_pukAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call26  "  ?id "  " ?id1 "  jora_jora_se_pukAra  )" crlf))
)
;---------------------------------------------------------------------------------------------
;@@@ Added by Anita
;I now call upon the chairman to address the meeting. -oxford dictionary
;मैं अब बैठक को सम्बोधित करने के लिए अध्यक्ष को आमन्त्रित करता हूँ ।
(defrule call_upon
(declare (salience 5000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) upon)
(kriyA-upon_saMbanXI  ?id ?id1)
(saMjFA-to_kqxanwa  ?id1 ?id2)
(id-root ?id2 address|speech)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) AmaMwriwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* " call.clp call_upon  "  ?id "  "(+ ?id 1)"  AmaMwriwa_kara)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  call.clp  call_upon   "  ?id " ko )" crlf)
)
)


(defrule call29
(declare (salience 4700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upon_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nimaMwriwa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " call.clp call29 " ?id "  nimaMwriwa_kara )" crlf)) 
)

(defrule call30
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nimaMwriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call30  "  ?id "  " ?id1 "  nimaMwriwa_kara  )" crlf))
)

;@@@ Added by Anita
;I'm  waiting for someone to call me back with a price. -oxford dictionary
;मैं मूल्य के साथ किसी के वापस फोन करने की प्रतीक्षा कर रहा हूँ ।
(defrule call_back
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id vApasa_teliPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call_back  " ?id " " ?id1 " vApasa_teliPona_kara )" crlf))
)


;@@@ Added by Anita
;He felt the call of the priesthood early on in his life. 
;उसने अपने जीवन की शुरुआत में ही पुरोहित बनने की अन्तर्प्रेरणा को महसूस किया.
(defrule call03
(declare (salience 4500))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?)
(kriyA-object ?kri ?id)
(id-root ?kri feel)
(id-root =(+ ?id 1) of)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) anwarpreraNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp  call03 "  ?id " anwarpreraNA)" crlf))
)

;@@@ Added by Anita
;I'll call round and see you on my way home.   -oxford dictionary
;मैं भेंट करने के लिए बुलाऊँगा और घर आते हुए तुमसे मार्ग में मिलूँगा ।
(defrule call_round
(declare (salience 4500))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?obj)
(id-root ?obj round)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?obj BeMta_karane_ke_lie_bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call_round  " ?id "  " ?obj "  BeMta_karane_ke_lie_bulA)" crlf))
)

;During all this time, I never once felt the call of nature, nor did I suffer from hunger.
;@@@ Added by Anita
(defrule call_nature
(declare (salience 4300))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
(id-word =(+ ?id 1) of)
(id-word =(+ ?id 2) nature)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1)=(+ ?id 2) SOcAxi_kI_AvaSyakawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call_nature "  ?id "  " =(+ ?id 1) " "=(+ ?id 2)" SOcAxi_kI_AvaSyakawA)" crlf))
)


;---------------------------------------------- single meaning -----------------------------------------------
;@@@ Added by Anita(03-07-13)-hinkhoj dictionary
;All Gods are given call through MANTRAS during yagya.
;यज्ञ के दौरान सारे ईश्वरों का मन्त्रों के द्वारा अवाहन किया गया.
(defrule call01
(declare (salience 3000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-through_saMbanXI ?kri ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvAhana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp  call01 "  ?id "  AvAhana )" crlf))
)

;@@@ Added by Anita
;There was a disputed call in the second set.
;दूसरे समुच्चय में एक विवादकर निर्णय था ।
(defrule call02
(declare (salience 3000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp  call02 "  ?id " nirNaya )" crlf))
)

;@@@ Added by Anita
;This is the last call for passengers travelling on British Airways flight 199 to Rome.
;यह रोम के लिए ब्रिटिश एअरवेज़ की उड़ान 199 से यात्रा करने वाले यात्रियों के लिए आखिरी पुकार  है ।
;last_call word added in multi_word expression.txt
;I heard a distinctive call of the cuckoo.
;मैंने कोयल की एक विशेष पुकार सुनी ।
(defrule call04
(declare (salience 3000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or (viSeRya-of_saMbanXI  ?id  ?)(viSeRya-for_saMbanXI ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pukAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp  call04 "  ?id "  pukAra )" crlf))
)

;@@@ Added by Anita
;This train calls at Didcot and Reading. -oxford dictionary
;यह रेलगाड़ी डिडकोट और रीडिंग में रुकती है ।
(defrule call05
(declare (salience 3050))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 train|bus)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " call.clp  call05 "  ?id "  ruka  )" crlf))
)

;@@@ Added by Anita
;This calls for a celebration. -oxford dictionary
;इसके लिए उत्सव होना चाहिए ।
(defrule call08
(declare (salience 3050))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI ?id ?id1)
(id-root ?id1 celebration)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " call.clp	call08  "  ?id " ho)" crlf))
)

;@@@ Added by Anita (03-07-13)
;They decided to call the baby Mark. -oxford dictionary
;उन्होंने शिशु को मारक् नाम देने के लिए निश्चय किया ।
;They decided to call their first daughter after her grandmother.	-oxford dictionary
;उन्होंने अपनी प्रथम बेटी को दादी का नाम  दिया ।
(defrule call09
(declare (salience 3650))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-subject  ?id ?id1)(kriyA-object ?id ?id1)(kriyA-object_2  ?id ?id1)(kriyA-after_saMbanXI  ?id ?id1))
(id-root ?id1 son|daughter|mother|father)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAma_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp  call09  "  ?id " nAma_xe )" crlf))
)

;@@@ Added by Anita
;It's the sort of work that calls for a high level of concentration. -cambridge dictionary
;यह ऐसा कार्य है जिसमें उच्च स्तर की एकाग्रत्ता की आवश्यकता होती है ।
(defrule call06
(declare (salience 3000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI ?id ?sam)
(viSeRya-of_saMbanXI  ?sam ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaSyakawA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " call.clp	call06  "  ?id " AvaSyakawA_ho  )" crlf))
)


;Added by Shirisha Manju(Suggested by Sukhada (7-06-13)
;This field is called electromagnetism. 
(defrule call_with_tam
(declare (salience 2900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(root-verbchunk-tam-chunkids ? ? is_en $? ?id $?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp      call_with_tam   "  ?id "  kaha )" crlf))
)

;commented by Shirisha Manju (Suggested by Chaitanya sir)
;(defrule call0
;(declare (salience 3000))
;(id-root ?id call)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat =(+ ?id 1) proper_noun)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id nAmaka))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp      call0   "  ?id "  nAmaka )" crlf))
;)

;following_category=prop_noun && category=verb  jisako_bulAyA_jAwA_WA   100
;it can also be jAwA_hE; nAmaka is neutral  but requires to be moved after the folloing Propoer noun, in Hindi


; You can not call her beautiful.
(defrule call33
(declare (salience 3000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 2) adjective)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp 	call33   "  ?id "  kaha )" crlf))
)

;The boy who you called yesterday has arrived 
; modified by maha laxmi
; Modified word mng as root mng 
; Removed (id-H_vib_mng ?id ed_en)


;@@@ Added by Anita
;I'm supposed to call you after twenty-four hours.
;मुझे आपको चौबीस घंटों के बाद टेलिफोन करना हैं .
(defrule call010
(declare (salience 3625))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-after_saMbanXI  ?id ?)
(kriyA-object ?id ?obj)
(id-root ?obj  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teliPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " call.clp  call010  " ?id "    teliPona_kara  )" crlf))
)


;commented by Shirisha Manju (Suggested by Chaitanya sir)
;(defrule call34
;(declare (salience 1500))
;(id-root ?id call)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id called )
;(id-cat_coarse ?id verb)
;=>
; (retract ?mng)
; (assert (id-wsd_root_mng ?id bulA))
; (if ?*debug_flag* then
; (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp   call34   "  ?id "  bulA )" crlf))
;)

;"calling","N","1.vyavasAya"
;Teaching is considered an apt calling for women.
;टीचिंग महिलाओं के लिए एक उचित व्यवसाय माना जाता है ।
(defrule call70
(declare (salience 1500))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id calling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vyavasAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  call.clp       call70   "  ?id "  vyavasAya )" crlf))
)

;------------------ Default rules ------------------------------------------------
;Added example sentences with translations by Anita
;default_sense && category=verb	bulA	0
;"call","V","1.bulAnA"
;My mother calls me Papa.
;I'll call a taxi for you.
;मैं आपके लिए टैक्सी बुलाऊँगा ।
;Did somebody call my name?
;क्या किसी ने मेरा नाम बुलाया ? 
(defrule call35
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp 	call35   "  ?id "  bulA )" crlf))
)

;Added example sentences with translations by Anita
;She is a busy woman with many calls on her time.
;वह अपने समय की बुलावों के साथ एक व्यस्त स्त्री है .
;The doctor has five calls to make this morning.
;डॉक्टर को आज सुबह पाँच बुलावे करने हैं ।
(defrule call36
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp 	call36   "  ?id "  bulAvA )" crlf))
)

;@@@ Added by Anita
;I thought I'd like to try a good singer , a guy called Kelvin Blacklock .
;मैंने सोचा कि मैं कैलविन ब्लैकलॉक नामक एक अच्छे गायक को आज़माना चाहता हूँ  ।
(defrule call31
(declare (salience 1900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp     call31   "  ?id "  nAmaka )" crlf))
)


;------------------------------- Removed Rules --------------------------------
;Removed call37 ---- same as call1
; "      call38 ----       " call2
; "      call39 ----       " call3 
; "      call40 ----       " call4
; "      call41 ----       " call5
; "      call42 ----       " call6	
; "      call43 ----       " call7
; "      call44 ----       " call8
; "      call45 ----       " call9
; "      call46 ----       " call10
; "      call47 ----       " call11
; "      call48 ----       " call12
; "      call49 ----       " call13
; "      call50 ----       " call14
; "      call51 ----       " call15
; "      call52 ----       " call16
; "      call53 ----       " call17
; "      call54 ----       " call18
; "      call55 ---- 	   " call19
; "      call56 ---- 	   " call20
; "      call57 ---- 	   " call21
; "      call58 ---- 	   " call22
; "      call59 ---- 	   " call23
; "      call60 ---- 	   " call24
; "      call61 ---- 	   " call25
; "      call62 ---- 	   " call26
; "      call65 ---- 	   " call29
; "      call66 ---- 	   " call30
; "      call71 ---- 	   " call35
; "      call72 ---- 	   " call36
; "      call69 ---- 	   " call33
; "  call64,call68,call32 ---- same as call28
; "  call63,call67,call31 ---- same as call27

;Currently in the UK generic medicines may be called by two different names .

;I just thought i would call by on my way into town.
;मैंने सोचा कि शहर जाते समय उधर से होते हुए जाऊँगा ।


;Added Anita
;(defrule call4
;(declare (salience 4600))
;(id-root ?id call)
;?mng <-(meaning_to_be_decided ?id)
;(id-root =(+ ?id 1) of)
;;(viSeRya-of_saMbanXI  ?id ?id1)
;(kriyA-object  ?id ?)
;(id-cat_coarse ?id noun)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id upayoga))
;(if ?*debug_flag* then
;(printout wsd_fp"(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " call.clp  call11 "  ?id "    upayoga )" crlf))
;)


;Added Anita-dante dictionary
;Currently in the UK generic medicines may be  called by two different names .
;आजकल यूके में सामान्य औषधियों को दो अलग-अलग नामों से जाना जा सकता है ।
;(defrule call_by
;(declare (salience 4500))
;(id-root ?id call)
;(id-word ?id called)
;?mng <-(meaning_to_be_decided ?id)
;;(kriyA-upasarga ?id ?)
;(id-word =(+ ?id 1) by)
;(kriyA-by_saMbanXI  ?id ?)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) jAnA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp  call_by "  ?id "  " =(+ ?id 1) "   jAnA  )" crlf))
;)
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_call_up
(declare (salience 5200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-object ?id ?obj)
(subject-subject_samAnAXikaraNa ?obj ?id2)
(id-root ?id2 last)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 jutA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " call.clp  sub_samA_call_up" ?id " " ?id1" "?id2" jutA)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_call_up
(declare (salience 5200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-object ?id ?obj)
(object-object_samAnAXikaraNa ?obj ?id2)
(id-root ?id2 last)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 jutA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " call.clp  obj_samA_call_up" ?id " " ?id1" "?id2" jutA)" crlf))
)
