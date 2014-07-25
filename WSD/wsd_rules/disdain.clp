
(defrule disdain0
(declare (salience 4000))
(id-root ?id disdain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avahelanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disdain.clp 	disdain0   "  ?id "  avahelanA )" crlf))
)

;"disdain","N","1.avahelanA"
;She gave me a look of disdain.
;
(defrule disdain1
(declare (salience 4000))
(id-root ?id disdain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avahelanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disdain.clp 	disdain1   "  ?id "  avahelanA_kara )" crlf))
)

;"disdain","VT","1.avahelanA_karanA"
;She disdains to eat with low class people.
;


;@@@ Added by Pramila(BU) on 09-01-2014
;She disdained to reply.              ;shiksharthi
;उसने उत्तर देने से इंकार कर दिया.
(defrule disdain2
(declare (salience 5000))
(id-root ?id disdain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMkAra_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disdain.clp 	disdain2   "  ?id "  iMkAra_kara_xe )" crlf))
)



;@@@ Added by Pramila(BU) on 09-01-2014
;They dropped the matter with disdain.              ;shiksharthi
;उन्होंने मामले को तिरस्कारपूर्वक रफा-दफा कर दिया.
(defrule disdain3
(declare (salience 5000))
(id-root ?id disdain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
(id-word =(- ?id 1) with)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) wiraskArapUrvaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " disdain.clp	disdain3  "  ?id "  " (- ?id 1) "  wiraskArapUrvaka  )" crlf))
)
