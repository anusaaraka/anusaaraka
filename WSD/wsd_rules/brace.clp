
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)15-Feb-2014
;They braced themselves against the wind.[oald]
;उन्होंने हवा के विरुद्ध खुद को गिरने से बचाने के लिये तैयारी करी
(defrule brace2
(declare (salience 3000))
(id-root ?id brace)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacAne_ke_liye_wEyArI_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brace.clp 	brace2   "  ?id "  bacAne_ke_liye_wEyArI_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  brace.clp 	brace2   "  ?id " ko )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)15-Feb-2014
;They are bracing themselves for a long legal battle.[oald]
;वे एक लंबा कानूनी लडाई के लिये खुद तैयार कर रहे हैं .
;UN troops are braced for more violence.[oald]
;यू एन दल अधिक हिंसा के लिये तैयार किए गये हैं .
(defrule brace3
(declare (salience 3000))
(id-root ?id brace)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brace.clp 	brace3   "  ?id "  wEyAra_kara )" crlf))
)


;*****************************DEFAULT RULES*****************************

(defrule brace0
(declare (salience 0));salience reduced by garima Singh
(id-root ?id brace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XanukoRTaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brace.clp 	brace0   "  ?id "  XanukoRTaka )" crlf))
)

;"brace","N","1.XanukoRTaka"
;He wore a brace on his knee
;
(defrule brace1
(declare (salience 0));salience reduced by garima Singh
(id-root ?id brace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brace.clp 	brace1   "  ?id "  xqDZa_kara )" crlf))
)

;"brace","VT","1.xqDZa_karanA"
;Brace your elbows while working on the potter's wheel.
;
;**********************************EXAMPLE*******************************

;UN troops are braced for more violence.
;They are bracing themselves for a long legal battle.
;They braced themselves against the wind.
