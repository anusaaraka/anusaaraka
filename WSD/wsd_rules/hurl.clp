
(defrule hurl0
(declare (salience 5000))
(id-root ?id hurl)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hurling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id eka_prakAra_kA_geMxa_kA_Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hurl.clp  	hurl0   "  ?id "  eka_prakAra_kA_geMxa_kA_Kela )" crlf))
)

;"hurling","N","1.eka prakAra kA geMxa kA Kela"
;'hurling' Kela meM vaha tIma jIwa gaI
;
(defrule hurl1
(declare (salience 4900))
(id-root ?id hurl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_se_PeMka_kara_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurl.clp 	hurl1   "  ?id "  jora_se_PeMka_kara_mAra )" crlf))
)

;"hurl","V","1.jora se PeMka kara mAranA"
;ugravAxI pulisa para pawWara 'hurl' kara raheM hEM. 
;
;

;@@@ Added by Prachi Rathore 2-1-14
;Rival fans hurled abuse at each other.[oald]
(defrule hurl2
(declare (salience 5000))
(id-root ?id hurl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 abuse|insult)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurl.clp 	hurl2   "  ?id "  uCAla )" crlf))
)

