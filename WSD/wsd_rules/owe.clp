
(defrule owe0
(declare (salience 5000))
(id-root ?id owe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id owing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xeya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  owe.clp  	owe0   "  ?id "  xeya )" crlf))
)

;"owing","Adj","1.xeya"
;Rs.100 is still owing
;



;Added by Meena(18.6.10)
;According to our records you owe us $130 .
(defrule owe1
(declare (salience 4900))
(id-root ?id owe)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(kriyA-object_1  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uXAra_raha))
(assert (kriyA_id-subject_viBakwi ?id para))
(assert (kriyA_id-object1_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  owe.clp       owe1   "  ?id "  uXAra_raha )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  owe.clp      owe0   "  ?id " para )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object1_viBakwi   " ?*wsd_dir* "  owe.clp      owe0   "  ?id " kA )" crlf)
)
)




;Salience reduced by Meena(18.6.10)
(defrule owe2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id owe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id qNI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  owe.clp 	owe2   "  ?id "  qNI_ho )" crlf))
)

;default_sense && category=verb	qNI_ho	0
;"owe","VT","1.qNI_honA"
;
;
