
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)9-Feb-2014
;Butt out, Neil! This is none of your business.[oald]
;हस्तक्षेप करना बंद करो नील ! इससे तुम्हारा कोइ लेना देना नहीं है 
(defrule butt3
(declare (salience 5000))
(id-root ?id butt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 haswakRepa_karnA_banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " butt.clp	butt3  "  ?id "  " ?id1 "  haswakRepa_karnA_banxa_kara  )" crlf))
)



(defrule butt0
(declare (salience 5000))
(id-root ?id butt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rukAvata_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " butt.clp	butt0  "  ?id "  " ?id1 "  rukAvata_dAla  )" crlf))
)

;*********************DEFAULT RULES***********************************

;mere kAma meM rukAvata mawa dAlo
(defrule butt1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id butt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuMxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  butt.clp 	butt1   "  ?id "  kuMxA )" crlf))
)


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)9-feb-2014
;removed 'ya_sIMGa' from the meaning
(defrule butt2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id butt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sira_se_takkara_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  butt.clp 	butt2   "  ?id "  sira_se_takkara_mAra )" crlf))
)

;"butt","V","1.sira_yA_sIMgoM_se_takkara_mAranA"
;He butted his sister in the stomach. 
;
;
