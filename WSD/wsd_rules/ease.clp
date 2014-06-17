;$$$ modified by Pramila(BU) on 24-01-2014 [meaning changed from "ArAma_kA"  to "ArAma"]
(defrule ease0
(declare (salience 5000))
(id-root ?id ease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ease.clp 	ease0   "  ?id "  ArAma )" crlf))
)

;"ease","N","1.ArAma_kA"
;We have to follow a life of ease.
;--"2.sugamawA"
;We have put the books here for ease of access.
;
(defrule ease1
(declare (salience 4000))
(id-root ?id ease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ease.clp 	ease1   "  ?id "  ArAma_xe )" crlf))
)

;"ease","VT","1.ArAma_xenA"
;He eased the burden of debt by implementing many schemes.
;--"2.wanAva_kama_karanA"
;The medicines eased his tension.
;--"3.mUlya_kama_honA"
;Interest rates have eased since May.
;

;@@@ Added by Pramila(BU) on 24-01-2014
;The situation soon eased off.   ;shikshrthi
;तनाव तुरंत कम हो गया
(defrule ease2
(declare (salience 4900))
(id-root ?id ease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ease.clp	ease2  "  ?id "  " ?id1 "  kama_ho_jA  )" crlf))
)

;@@@ Added by Pramila(BU) on 24-01-2014
;The medicines eased his tension.     [old clp]
;दवाइयों ने उसका तनाव कम कर दिया.
(defrule ease3
(declare (salience 4000))
(id-root ?id ease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 pain|tension)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_kara_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ease.clp 	ease3   "  ?id "  kama_kara_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  ease.clp      ease3   "  ?id " ne )" crlf))
)

;@@@ Added by Pramila(BU) on 24-01-2014
;Interest rates have eased since May.  [old clp]
;ब्याज की दर मई के बाद से कम हो गई है.
;Share prices eased back from yesterday's levels.         [oald]
;शेयर की कीमतें कल के स्तर से कम हो गई है.
(defrule ease4
(declare (salience 5000))
(id-root ?id ease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-from_saMbanXI  ?id ?)(kriyA-since_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ease.clp 	ease4   "  ?id "  kama_ho_jA )" crlf))
)

;@@@ Added by Pramila(BU) on 24-01-2014
;Ease your grip on the wheel a little.   ;oald
;पहिया पर अपनी पकड़ को थोड़ा ढीला छोड़ दीजिए.
(defrule ease5
(declare (salience 5000))
(id-root ?id ease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DIlA_CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ease.clp 	ease5   "  ?id "  DIlA_CodZa_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 24-01-2014
;Ease the sleeve under the armpit.   ;shikshrthi
;बगल से आस्तीन को ढीला कर दो
(defrule ease6
(declare (salience 5000))
(id-root ?id ease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-under_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DIlA_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ease.clp 	ease6   "  ?id "  DIlA_kara_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 24-01-2014
;He eased off his shoes.    ;oald  
;उसने अपने जूते उतार दिए.
(defrule ease7
(declare (salience 5000))
(id-root ?id ease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
(kriyA-object  ?id ?id2)
(id-root ?id2 shoe)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ease.clp	ease7  "  ?id "  " ?id1 "  uwAra_xe  )" crlf))
)
