
;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;Brown the onions before adding the meat.[oald]
;मीट में डालने से पहले प्याज को भूरा होने तक भूनो
(defrule brown3
(declare (salience 5000))
(id-root ?id brown)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id verb)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUrA_hone_waka_BUna))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brown.clp 	brown3   "  ?id "  BUrA_hone_waka_BUna )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " brown.clp 	brown3    "  ?id " ko )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;By now the passengers were getting browned off with the delay.[oald]
;अब तक याञी विलम्ब के कारण ऊब चुके थे
(defrule brown4
(declare (salience 5000))
(id-word ?id browned)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Uba_cuke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brown.clp 	brown4  "  ?id "  " ?id1 "  Uba_cuke )" crlf))
)


;*************************DEFAULT RULES***********************

(defrule brown0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id brown)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brown.clp 	brown0   "  ?id "  BUrA )" crlf))
)

;"brown","Adj","1.BUrA"
;Rajini was wearing a brown sweater.
;
(defrule brown1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id brown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brown.clp 	brown1   "  ?id "  BUrA )" crlf))
)

;"brown","N","1.BUrA"
;His shirt has shades of brown.
;

;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;Heat the butter until it browns.[oald]
;मक्खन को भूरा होने तक गर्म करो 
(defrule brown2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id brown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUrA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brown.clp 	brown2   "  ?id "  BUrA_ho )" crlf))
)
