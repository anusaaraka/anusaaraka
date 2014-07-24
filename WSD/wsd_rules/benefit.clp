
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;It would be correct to say that he benefited by Asutosh's vast knowledge of the educational field in this country.[gyananidhi]
;यह कहना सही होगा कि उसको आशुतोश के इस देश में शैक्षिक क्षेत्र के  विशाल ज्ञान से लाभ मिला . 
(defrule benefit2
(declare (salience 5000))
(id-root ?id benefit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABa_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  benefit.clp 	benefit2   "  ?id "  lABa_mila )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;The new regulations will be of benefit to everyone concerned.[oald]
;नए नियम सभी संबंधित लोगो के लिए लाभकारी होंगे.
(defrule benefit3
(declare (salience 5000))
(id-root ?id benefit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-of_saMbanXI  ? ?id)
(id-word =(- ?id 1) of)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) lABakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " benefit.clp	benefit3  "  ?id "  " (- ?id 1) "  lABakArI )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;A delegation of the Association of Seniors' club met with an MP from Punjab, Param Gill and demanded security for their benefits in this regard.[news-dev]
;एसोसिएशन ऑफ सीनियर्स क्लब का एक डेलिगेशन पंजाबी मूल के एमपी परम गिल से मिला और इस संबंध में अपने हितों की रक्षा करने की मांग की। 
(defrule benefit4
(declare (salience 5000))
(id-root ?id benefit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id1 ?id)
(kriyA-object  ?id1 ?id2)
(id-word ?id2 security)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  benefit.clp 	benefit4   "  ?id "  hiwa )" crlf))
)


;***********************DEFAULT RULES*********************************

(defrule benefit0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id benefit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  benefit.clp 	benefit0   "  ?id "  lABa )" crlf))
)

;"benefit","N","1.lABa"
;There are many benefits of nuclear energy.
;
(defrule benefit1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id benefit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BalA_kara))
(assert (kriyA_id-object_viBakwi ?id kA));added by sheetal
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  benefit.clp 	benefit1   "  ?id "  BalA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  benefit.clp   benefit1   "  ?id "  kA )" crlf))
)

;"benefit","VT","1.BalA_karanA"
;The new facilities have benefitted the hostel inmates.
;
