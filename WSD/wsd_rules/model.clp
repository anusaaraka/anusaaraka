
(defrule model0
(declare (salience 5000))
(id-root ?id model)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id modelling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mAdela_banane_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  model.clp  	model0   "  ?id "  mAdela_banane_kA )" crlf))
)

;"modelling","Adj","1.mAdela_banane_kA"
;She was sure she would succeed in her modelling career.
;
(defrule model1
(declare (salience 4900))
(id-root ?id model)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id namUnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  model.clp 	model1   "  ?id "  namUnA )" crlf))
)

;"model","N","1.namUnA"
;They prepared the model of a computer for their experiment.
;--"2.mAdela"
;She is an up && coming fashion model.
;
;