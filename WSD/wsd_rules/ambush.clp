
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;They attacked the enemy from the ambush.[shiksharthi kosh]
;उन्होंने घात स्थान से शञु पर आक्रमण किया
(defrule ambush2
(declare (salience 5000))
(id-root ?id ambush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-from_saMbanXI ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAwa_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ambush.clp 	ambush2   "  ?id "  GAwa_sWAna )" crlf))
)

;********************************DEFAULT RULES**********************************

(defrule ambush0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id ambush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ambush.clp 	ambush0   "  ?id "  GAwa )" crlf))
)

;"ambush","N","1.GAwa"
;The soldier was killed in an ambush.
;

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;The guerrillas ambushed them near the bridge.[oald]
;गुरिल्ला ने पुल के पास से उन पर घात से आक्रमण किया
;She was ambushed by reporters.[oald]
(defrule ambush1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id ambush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAwa_se_AkramaNa_kara));changed the meaning from 'GAwa_lagA' to 'GAwa_se_AkramaNa_kara'
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ambush.clp 	ambush1   "  ?id "  GAwa_se_AkramaNa_kara )" crlf))
)

;"ambush","V","1.GAwa_lagAnA"
;The actress was ambushed by reporters && cameramen. 
;
