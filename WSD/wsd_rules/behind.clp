
(defrule behind0
(declare (salience 5000))
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is|are)
(id-word =(+ ?id 1) schedule|time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind0   "  ?id "  se_pICe )" crlf))
)

(defrule behind1
(declare (salience 4900))
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is|are)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind1   "  ?id "  ke_pICe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)23-jan-2014
;The accident is behind you now, so try to forget it.[oald]
;दुर्घटना अब आपके अतीत में है, इसलिये इसे भूलने का प्रयास करो . 
(defrule behind5
(declare (salience 5000))
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(kriyA-behind_saMbanXI  ?kri ?id1)
(id-word ?id1 you|him|her|them)
(kriyA-subject  ?kri ?sub)
(id-word ?sub accident)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_awIwa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind5   "  ?id "  ke_awIwa_meM )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)23-jan-2014
;She has ten years' useful experience behind her.[oald]
;उसके पास दस वर्षों का उपयोगी अनुभव है  
(defrule behind6
(declare (salience 5000))
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-behind_saMbanXI  ?id1 ?id2)
(id-word ?id1 experience)
(id-word ?id2 you|him|her|them)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind6   "  ?id "  - )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)23-jan-2014
;The whole class was told to stay behind after school.
;पूरी कक्षा को स्कूल के बाद रुकने के लिए कहा गया था.
(defrule behind7
(declare (salience 5500))
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?kri ?id)
(id-word ?kri stay)
(kriyA-after_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?kri  ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  behind.clp	behind7  "  ?id "  " ?kri "   ruka )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)23-jan-2014
(defrule behind8
(declare (salience 5000))
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?kri ?id)
(id-word ?kri stay)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?kri  pICe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  behind.clp	behind8  "  ?id "  " ?kri "  pICe_raha )" crlf))
)

;**************************DEFAULT RULES******************************************

(defrule behind2
(declare (salience 0)) ; salience reduced by Garima Singh
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind2   "  ?id "  pICe_se )" crlf))
)

;"behind","Adv","1.pICe_se"
;She came from behind.
;
(defrule behind3
(declare (salience 0)) ; salience reduced by Garima Singh
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUlhA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind3   "  ?id "  kUlhA )" crlf))
)

;"behind","N","1.kUlhA"
;He kicked the boy's behind.
;
(defrule behind4
(declare (salience 0)) ; salience reduced by Garima Singh
(id-root ?id behind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behind.clp 	behind4   "  ?id "  ke_pICe )" crlf))
)

;"behind","Prep","1.ke_pICe"
;The sun disappeard behind the clouds.
;He was behind by two points at the end of the match.
;
