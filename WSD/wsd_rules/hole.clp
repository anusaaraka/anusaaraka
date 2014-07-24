
(defrule hole0
(declare (salience 5000))
(id-root ?id hole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hole.clp 	hole0   "  ?id "  Cexa )" crlf))
)

;"hole","N","1.Cexa"
;usane'Hole' ko simeMta se Bara xiyA
;
(defrule hole1
(declare (salience 4900))
(id-root ?id hole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hole.clp 	hole1   "  ?id "  Cexa_banA )" crlf))
)

;"hole","V","1.Cexa_banAnA"
;sImA vAsiyoM ke makAna kI xIvAroM meM golAbArI se 'hole'(Cexa bana gaye)kiye. 
;


;@@@ Added by Prachi Rathore[13-2-14]
;We believe the gang are holed up in the mountains. [oald]
;हम मानते हैं दल पर्वतों में छुप गये हैं . 
(defrule hole2
(declare (salience 5000))
(id-root ?id hole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Cupa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hole.clp 	hole2 "  ?id "  " ?id1 " Cupa_jA)" crlf))
)
