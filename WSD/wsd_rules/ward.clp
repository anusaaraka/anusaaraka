
(defrule ward0
(declare (salience 5000))
(id-root ?id ward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigarAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ward.clp 	ward0   "  ?id "  nigarAnI )" crlf))
)

;"ward","Adj","1.nigarAnI"
;Mohan is a ward boy in the state hospital.
;


;$$$ Modified by Pramila(BU) on 28-02-2014
;When his father died, the boy became the ward of his uncle.  ;shiksharthi
;जब उसका पिता मर गया तो वह चाचा के आश्रित हो गया.
(defrule ward1
(declare (salience 4900))
(id-root ?id ward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ward.clp 	ward1   "  ?id "  ASriwa )" crlf))
)

;"ward","N","1.ASriwa"
;The young boy was Gita's ward.
;

;Keep watch and ward over him.  ;shiksharthi
;उस पर निगाह रखो और उसकी रक्षा करो.
(defrule ward2
(declare (salience 100))
(id-root ?id ward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ward.clp 	ward2   "  ?id "  rakRA_kara )" crlf)
)
)



;"ward","VT","1.rakRA_karanA"
;People believe that sincere prayers ward off the evils
;

;@@@ Added by Pramila(BU) on 28-02-2014
;Slowly he warded off his attack.   ;shiksharthi
;धीरे से उसने उसके आक्रमण को रोक दिया.
(defrule ward3
(declare (salience 4800))
(id-root ?id ward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ward.clp	ward3  "  ?id "  " ?id1 "  roka_xe  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " ward.clp      ward3   "  ?id "ko )" crlf))
)


;@@@ Added by Pramila(BU) on 28-02-2014
;This corporator represents ward No.16.   ;shiksharthi
;यह सभासद वार्ड संख्या १६ का प्रतिनिधित्व करता है.
(defrule ward4
(declare (salience 100))
(id-root ?id ward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vArda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ward.clp 	ward4   "  ?id "  vArda )" crlf))
)

