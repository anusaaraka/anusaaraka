
(defrule heat0
(declare (salience 5000))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id heating )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id garama_karane_kI_paxXawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  heat.clp  	heat0   "  ?id "  garama_karane_kI_paxXawi )" crlf))
)

;"heating","N","1.garama karane kI paxXawi"
;SIwa lahara ke xinoM meM"heating" acCA rahawA hE.
;
(defrule heat1
(declare (salience 4900))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id headted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AvegapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  heat.clp  	heat1   "  ?id "  AvegapUrNa )" crlf))
)

;"heated","Adj","1.AvegapUrNa"
;saMsaxa meM"heated"bahasa ho cukI hE.
;
;
(defrule heat2
(declare (salience 4800))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id URmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat2   "  ?id "  URmA )" crlf))
)

;"heat","N","1.URmA"
;he fainted because of heat .
;vaha garmI ke kAraNa behoSa ho gayA .
;
(defrule heat3
(declare (salience 4700))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat3   "  ?id "  garama_kara )" crlf))
)

;"heat","V","1.garama_karanA"
;if we heat iron it becomes red .
;agara hama lohA garama karawe hEM wo vaha lAla ho jAwA hE.
;

;@@@ Added by Prachi Rathore 8-1-14
;As in the case of the Sun, the shrinking ball of gas begins to heat up and eventually becomes hot enough to shine. 
;. 
(defrule heat4
(declare (salience 5000))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 garama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " heat.clp	heat4  "  ?id "  " ?id1 "  garama_ho  )" crlf))
)

;@@@ Added by Prachi Rathore 8-1-14
;Just heat up the food in the microwave.[oald]
; 
(defrule heat5
(declare (salience 5500))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
(kriyA-object  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 garama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " heat.clp	heat5  "  ?id "  " ?id1 "  garama_kara  )" crlf))
)

;@@@ Added by Prachi Rathore 8-1-14
;‘No, I won't,’ he said with heat in his voice.[oald]
; 
(defrule heat6
(declare (salience 5000))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ?id1 ?id)
(id-root ?id1 say)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat6   "  ?id "  kroXa )" crlf))
)

;@@@ Added by Prachi Rathore 9-1-14
;He fainted because of heat .[sentence of this file]
(defrule heat7
(declare (salience 5000))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-of_saMbanXI  ?id1 ?id)(viSeRya-viSeRaNa  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat7   "  ?id "  garmI )" crlf))
)

;@@@ Added by Prachi Rathore 9-1-14
;Heat rises. [oald]
; 
(defrule heat8
(declare (salience 5000))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 rise)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat8   "  ?id "  garmI )" crlf))
)

;@@@ Added by Prachi Rathore 9-1-14
;He could feel the heat of the sun on his back.[oald]
(defrule heat9
(declare (salience 5000))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 sun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat9   "  ?id "  garmI )" crlf))
)

;@@@ Added by Prachi Rathore 9-1-14
;Set the oven to a low heat.[oald]
(defrule heat10
(declare (salience 5500))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ?id1 ?id)
(kriyA-object  ?id1 ?id2)
(id-root ?id2 oven)
(id-root ?id1 set)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wApamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat10   "  ?id "  wApamAna )" crlf))
)

;@@@ Added by Prachi Rathore 9-1-14
;
(defrule heat11
(declare (salience 5000))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ?id1 ?id)
(id-root ?id1 set)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Azca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat11   "  ?id " Azca )" crlf))
)

;@@@ Added by Prachi Rathore 9-1-14
; To suffer from the heat.[oald]
(defrule heat12
(declare (salience 5000))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-from_saMbanXI  ?id1 ?id)
(id-root ?id1 suffer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat12   "  ?id " garmI)" crlf))
)

;@@@ Added by Prachi Rathore 9-1-14
;United turned up the heat on their opponents with a second goal.[oald]
(defrule heat13
(declare (salience 5000))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?id1)
(kriyA-object  ?id2 ?id)
(id-root ?id2 turn)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wanAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat13   "  ?id " wanAva)" crlf))
)
