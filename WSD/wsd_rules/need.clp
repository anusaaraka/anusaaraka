
(defrule need0
(declare (salience 5000))
(id-root ?id need)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id needed )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaSyakawA))
(assert (kriyA_id-subject_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  need.clp  	need0   "  ?id "  AvaSyakawA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi  " ?*wsd_dir* "  need.clp       need0   "  ?id " kI )" crlf))
)

(defrule need1
(declare (salience 4900))
(id-root ?id need)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZarUrawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  need.clp 	need1   "  ?id "  jZarUrawa )" crlf))
)

;"need","N","1.jZarUrawa"
;There is a need to improve the situation.




;Added by Meena(20.11.09)
;We need a president who understands us.
(defrule need2
(declare (salience 4800))
(id-root ?id need)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaSyakawA))
(assert (kriyA_id-object_viBakwi ?id kI))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  need.clp      need2   "  ?id "  AvaSyakawA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  need.clp      need2   "  ?id " kI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  need.clp      need2   "  ?id " ko )" crlf))
)



;Salience reduced by Meena(20.11.09)
(defrule need3
(declare (salience 0))
;(declare (salience 4800))
(id-root ?id need)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaSyakawA_ho))
(assert (kriyA_id-object_viBakwi ?id kI))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  need.clp 	need3   "  ?id "  AvaSyakawA_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  need.clp      need3   "  ?id " kI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  need.clp      need3   "  ?id " ko )" crlf))
)



; They need our help.
; kaaraka chart takes care of 'ko' vibhakti of karta.
; Amba
;default_sense && category=verb	ko_jZarUrawa_hE	0
;"need","V","1.ko_jZarUrawa_hE"
(defrule need4
(declare (salience 4700))
(id-root ?id need)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jarUrawa_ho))
(assert (kriyA_id-object_viBakwi ?id kI))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  need.clp 	need4   "  ?id "  jarUrawa_ho )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  need.clp      need4   "  ?id " kI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  need.clp      need4   "  ?id " ko )" crlf)

)

;"need","VTI","1.jarUrawa_honA"
;They needed some evidence of her innosence.
;I need  a rest. 
;
