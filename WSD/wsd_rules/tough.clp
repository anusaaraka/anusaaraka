
(defrule tough0
(declare (salience 5000))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tough.clp 	tough0   "  ?id "  kadZA )" crlf))
)

(defrule tough1
(declare (salience 4900))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tough.clp 	tough1   "  ?id "  kadZA )" crlf))
)

;"tough","Adj","1.kadZA"
;He is a tough person to deal with.
;--"2.majabUwa"
;It is a tough glass. It will not break.
;--"3.uxxaNda"
;Police are controlling the tough mob.
;--"4.kaTora"
;Police are tough with the criminals.
;--"5.xu:sAXya"
;It is rather a tough problem to solve.
;
;

;@@@ Added by Prachi Rathore[2-4-14]
;It was a tough decision to make.
;यह एक मुश्किल निर्णय था . 
(defrule tough2
(declare (salience 5000))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muSkila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tough.clp 	tough2   "  ?id "  muSkila )" crlf))
)


;@@@ Added by Prachi Rathore[2-4-14]
;It is a tough glass. It will not break.
;यह एक मजबूत काँच है . यह नहीं टूटेगा . 
(defrule tough3
(declare (salience 5000))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 glass)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tough.clp 	tough3   "  ?id "  majabUwa )" crlf))
)


;@@@ Added by Prachi Rathore[2-4-14]
; She hated her job, but she toughed it out until she found a better one. [m-w]
;उसे उसका काम नापसन्द था, परन्तु वह तब तक दृढ़तापूर्वक टिकी रही जब तक उसको एक अधिक बेहतर वाला नहीं मिलता  . 
(defrule tough4
(declare (salience 4600))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xqDawApUrvaka_tike_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tough.clp	tough4  "  ?id "  " ?id1 "  xqDawApUrvaka_tike_raha )" crlf))
)


;@@@ Added by Prachi Rathore[2-4-14]
;Police are controlling the tough mob.
;पुलीस उद्दण्ड टोली को वश में रख रहीं हैं . 
(defrule tough5
(declare (salience 5100))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 mob|crowd)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxxaNda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tough.clp 	tough5   "  ?id "  uxxaNda )" crlf))
)


;@@@ Added by Prachi Rathore[2-4-14]
;Police are tough with the criminals.
;पुलीस अपराधियों के साथ कठोर हैं . 
(defrule tough6
(declare (salience 5100))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tough.clp 	tough6   "  ?id "  kaTora )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_tough3
(declare (salience 5000))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 glass)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tough.clp   sub_samA_tough3   "   ?id " majabUwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_tough3
(declare (salience 5000))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 glass)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tough.clp   obj_samA_tough3   "   ?id " majabUwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_tough5
(declare (salience 5100))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mob|crowd)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxxaNda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tough.clp   sub_samA_tough5   "   ?id " uxxaNda )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_tough5
(declare (salience 5100))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mob|crowd)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxxaNda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tough.clp   obj_samA_tough5   "   ?id " uxxaNda )" crlf))
)
