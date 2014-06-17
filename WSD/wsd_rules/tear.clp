
(defrule tear0
(declare (salience 5000))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PAdZa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tear.clp tear0 " ?id "  PAdZa )" crlf)) 
)

(defrule tear1
(declare (salience 4900))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tear.clp	tear1  "  ?id "  " ?id1 "  PAdZa  )" crlf))
)

(defrule tear2
(declare (salience 4800))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AzsU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tear.clp 	tear2   "  ?id "  AzsU )" crlf))
)

(defrule tear3
(declare (salience 4700))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tear.clp 	tear3   "  ?id "  PAdZa )" crlf))
)

;"tear","VT","1.PAdZanA"
;The tiger tore its prey.
;??--"2.aSAnwipUrNa_honA"
;The region was torn to conflicts.
;
;

;@@@ Added by Prachi Rathore
; You don't tear off every leaf you can grab. 
;आप प्रत्‍येक पत्ती को नहीं तोड़ें।
(defrule tear4
(declare (salience 5000))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 leaf)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tear.clp	tear4  "  ?id "  " ?id1 "  wodZa )" crlf))
)

;@@@ Added by Prachi Rathore
(defrule tear5
(declare (salience 4900))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tear.clp	tear5  "  ?id "  " ?id1 "  PAdZa )" crlf))
)

;@@@ Added by Prachi Rathore[25-1-14]
;The robbers tore apart the house looking for the money. [m-w]
;डाकुओं ने पैसे ढूँढते हुए घर तहस नहस किया . 
(defrule tear6
(declare (salience 4900))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 apart)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wahasa_nahasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tear.clp	tear6  "  ?id "  " ?id1 " wahasa_nahasa_kara )" crlf))
)

;@@@ Added by Prachi Rathore[25-1-14]
;She tore up all the letters he had sent her. [oald]
;उसने वह सभी खत फाड दिए जो उसने उसको भेजे थे . 
(defrule tear7
(declare (salience 4900))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PAda_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tear.clp	tear7  "  ?id "  " ?id1 "  PAda_xe )" crlf))
)

;@@@ Added by Prachi Rathore[25-1-14]
;They tore into their food as if they were starving. [oald]
;वे उनके खाने पर टूट पडे मानो वे भूखे मर रहे थे . 
(defrule tear8
(declare (salience 4900))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta_pada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tear.clp	tear8  "  ?id "  " ?id1 "  tUta_pada)" crlf))
)

;@@@ Added by Prachi Rathore[31-1-14]
;They tore him apart when he left. [m-w]
;जब वह चला गया तब उन्होंने उसकी आलोचना की  . 
(defrule tear9
(declare (salience 4800))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 apart)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wahasa_nahasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tear.clp	tear9  "  ?id "  " ?id1 "  wahasa_nahasa_kara)" crlf))
)

;@@@ Added by Prachi Rathore[31-1-14]
;They tore him apart when he left. [m-w]
;जब वह चला गया तब उन्होंने उसकी आलोचना की  . 
(defrule tear10
(declare (salience 4900))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 apart)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AlocanA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tear.clp	tear9  "  ?id "  " ?id1 "  AlocanA_kara)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  tear.clp	tear10    "  ?id "  kA )" crlf))
)
