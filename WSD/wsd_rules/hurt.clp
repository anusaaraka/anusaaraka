
(defrule hurt0
(declare (salience 5000))
(id-root ?id hurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ahawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurt.clp 	hurt0   "  ?id "  Ahawa )" crlf))
)

;"hurt","Adj","1.Ahawa"
;BArawI apane miwra ke nimanwraNa na pAne se 'hurt' huI.
;
(defrule hurt1
(declare (salience 4900))
(id-root ?id hurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cota))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurt.clp 	hurt1   "  ?id "  cota )" crlf))
)

;"hurt","N","1.cota"
;xurGatanA meM vaha jyAxA 'hurt' nahIM huA.
;



;Added by Meena(12.1.11);had to write this rule as "arm" could not be included in "the animate_list.txt" 
;She hurt her arm in the fall and lost the use of her fingers temporarily. 
(defrule hurt02
(declare (salience 4800))
(id-root ?id hurt)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (kriyA_id-object_viBakwi ?id ko))
(assert (id-wsd_root_mng ?id kRawi_pahuzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurt.clp      hurt02   "  ?id "  kRawi_pahuzA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  hurt.clp      hurt02   "  ?id " ko )" crlf)
)
)



;Salience reduced by Meena(12.1.11)
(defrule hurt2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id hurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRawi_pahuzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurt.clp 	hurt2   "  ?id "  kRawi_pahuzcA )" crlf))
)

;"hurt","V","1.kRawi_pahuzcAnA"
;visPota se loga 'hurt' howe hEM
;

;Added by Prachi Rathore[23-11-13]
;She says that her ear hurts her.
;वह कह रही है कि उसके कान में दर्द है .
(defrule hurt3
(declare (salience 4900))
(id-root ?id hurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarxa))
(assert (kriyA_id-subject_viBakwi ?id me))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurt.clp 	hurt3   "  ?id "  xarxa )" crlf))
)

;Added by Prachi Rathore[23-11-13]
;He was badly hurt by the end of his marriage.
;शादी के अंत में वह बहुत आहत थी .
(defrule hurt4
(declare (salience 4900))
(id-root ?id hurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-by_saMbanXI  ?id ?)(kriyA-in_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ahawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurt.clp 	hurt4   "  ?id "  Ahawa )" crlf))
)

;Added by Prachi Rathore[23-11-13]
;Several people were seriously/badly hurt in the explosion.
;विस्फोट होने पर अनेक लोग बुरी तरह घायल हो गए .
(defrule hurt5
(declare (salience 5000))
(id-root ?id hurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
(id-root ?id1 explosion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAyala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurt.clp 	hurt5   "  ?id "  GAyala_ho )" crlf))
)


;@@@ Added by Prachi Rathore
;In his English daily, 'The Bengalee', ourendra-nath had made strong critical remarks against Mr. Justice Norris of the Calcutta High Court for having caused the household deity of a Hindu family to be produced in the court and thereby having hurt the religious feelings of the Hindus.[gyan-nidhi]
;अपने अंग्रेज़ी दैनिक द बंगाली में सुरेन्द्रनाथ ने कलकत्ता उच्च न्यायालय के न्यायमूर्ति श्री नारिस द्वारा एक हिन्दू परिवार के आराध्य देव को अदालत में पेश किये जाने की आज्ञा देने और इस प्रकार हिन्दुओं की धार्मिक भावनाओं को ठेस पहुंचाने की कड़ी आलोचना की।.
(defrule hurt6
(declare (salience 5000))
(id-root ?id hurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 feeling)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Tesa_pahuzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurt.clp 	hurt6   "  ?id "  kRawi_pahuzcA )" crlf))
)

