
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;The dark head of a seal bobbed up a few yards away.[oald]
;सील  का काला सिर कुछ गज की दूरी पर अचानक सतह पर आना
(defrule bob4
(declare (salience 4000))
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-word ?id1 up)
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id acAnaka_sawaha_para_xiKAyI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bob.clp  	bob4   "  ?id "  acAnaka_sawaha_para_xiKAyI_xe )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;She wears her hair in a bob.[oald]
;वह अपने बाल छोटे एकसार  रखती है . 
(defrule bob5
(declare (salience 4000))
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?kri ?id)
(kriyA-object  ?kri ?id1)
(id-root ?id1 hair)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Cote_ekasAra ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bob.clp  	bob5   "  ?id "  Cote_ekasAra )" crlf))
)



;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 04-March-2014
;That'll cost a few bob[oald]
;यह काफी महंगा पड़ेगा
(defrule bob6
(declare (salience 4000))
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-word ?kri cost)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-word ?id1 few)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAPI_mahaMgA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bob.clp  	bob6  "  ?id "  " ?id1 "  kAPI_mahaMgA )" crlf))
)

(defrule bob2
(declare (salience 3000))
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_nIce_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bob.clp 	bob2   "  ?id "  Upara_nIce_kara )" crlf))
)
;***********************************DEFAULT RULES*******************************

(defrule bob0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bobbed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Cote_bAla_vAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bob.clp  	bob0   "  ?id "  Cote_bAla_vAlI )" crlf))
)

;"bobbed","Adj","1.Cote_bAla_vAlI"
;She sports a bobbed hairstyle.
;
(defrule bob1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cote_bAla_raKane_kA_kisma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bob.clp 	bob1   "  ?id "  Cote_bAla_raKane_kA_kisma )" crlf))
)

;"bob","N","1.Cote_bAla_raKane_kA_kisma"
; Bobcut was a very popular hairstyle in the sixties.
;


(defrule bob3
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_nIce_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bob.clp 	bob3   "  ?id "  Upara_nIce_ho )" crlf))
)

;"bob","V","1.Upara_nIce_karanA[honA]"
;He bobbed his head in agreement.
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bob6
(declare (salience 4000))
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-word ?kri cost)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1 few)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAPI_mahaMgA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " bob.clp   sub_samA_bob6   "   ?id " " ?id1 " kAPI_mahaMgA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bob6
(declare (salience 4000))
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-word ?kri cost)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1 few)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAPI_mahaMgA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " bob.clp   obj_samA_bob6   "   ?id " " ?id1 " kAPI_mahaMgA )" crlf))
)
