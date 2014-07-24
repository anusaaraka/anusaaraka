;$$$ Modified by Nandini (17-12-13) added  engish word meaning as mAdela
;"model","N","1.namUnA"
;They prepared the model of a computer for their experiment.
(defrule model1
(declare (salience 4900))
(id-root ?id model)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id namUnA))
(assert (id-attach_eng_mng ?id mAdela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  model.clp 	model1   "  ?id "  namUnA )" crlf))
)

;@@@ Added by Nandini (17-12-13)
;The wedding gown is being modelled for us by the designer's daughter.[oxford advanced lerner dictionary]
(defrule model2
(declare (salience 4800))
(id-root ?id model)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 gown)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  model.clp 	model2   "  ?id "  wEyAra_kara )" crlf))
)


;"model","N","1.namUnA"
;They prepared the model of a computer for their experiment.
;--"2.mAdela"
;She is an up && coming fashion model.
;

;--------------------------------- Removed Rules ----------------------------------
; 1. model_adjective	mAdela_banane_kA
;	word modelling
;      She was sure she would succeed in her modelling career.
