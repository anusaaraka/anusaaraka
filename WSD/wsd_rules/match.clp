
;(defrule match0
;(declare (salience 5000))
;(id-root ?id match)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(- ?id 1) hockey|football|cricket)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id mEca))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  match.clp 	match0   "  ?id "  mEca )" crlf))
;)





;Added by Meena(7.9.09);salience in match1 should be higher than match3
;He would play a football match against his formar champions.
;They are playing an important match against Liverpool on Saturday . 
(defrule match1
(declare (salience 5000))
;(declare (salience 4900))
(id-root ?id match)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 play|win|lose|have)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  match.clp     match1   "  ?id "  mEca )" crlf))
)


;Added by Meena(7.9.09);to be discussed for the meaning "usake samaswara_kA_KilAdI"
;I was no match for him at tennis .
;I was his match at tennis . 
(defrule match2
(declare (salience 4900))
(id-root ?id match)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-RaRTI_viSeRaNa ?id ?id1)(viSeRya-det_viSeRaNa  ?id ?id1))
(subject-subject_samAnAXikaraNa  ?id2 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAnAswara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  match.clp     match2   "  ?id "  samAnAswara )" crlf)
)
)


;Added by Meena(7.9.09);
;Do you think these two colours match?
;He bought a sofa to match with curtains .
(defrule match3
(declare (salience 4900))
(id-root ?id match)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mela))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  match.clp     match3   "  ?id "  mela )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  match.clp     match3   "  ?id "  kA )" crlf)
)
)

;Added by Meena (7.9.09)
;Does this shirt match these trousers?
(defrule match4
(declare (salience 4900))
(id-root ?id match)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
;(kriyA-object ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mela_KA))
(assert (kriyA_id-object_viBakwi ?id ke_sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  match.clp     match4   "  ?id "  mela_KA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  match.clp     match4   "  ?id "  ke_sAWa )" crlf)
)
)




;Added by Meena(3.9.09)
;Do not strike a match if you suspect a gas leak . 
;He took all her letters into the yard and put a match to them . 
(defrule match5
(declare (salience 4900))
(id-root ?id match)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 strike|put)
(kriyA-object ?id1 ?id)
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAcisa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  match.clp     match5   "  ?id "  mAcisa )" crlf))
)



(defrule match6
(declare (salience 2000))
(id-root ?id match)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  match.clp     match6   "  ?id "  mEca )" crlf))
)






;"match","N","1.mEca"
;--"2.mukAbalA"
;He would play a foodball match against his formar champions.
;--"3.jodZIxAra"
;I've found a vase that's an exact match of one we already have.
;--"4.vivAha"
;She made a good match when she married him.
;


;LEVEL 
;
;
;Headword : match
;
;Examples --
;
;--jodZIxAra
;She will be the perfect match if she marries him.
;agara usane usase SAxI kI wo usake lie vaha sahI jodZIxAra hogI. <--mela
;
;--mela (_milawA julawA)
;This colour matches with my car's colour.
;yaha raMga mere kAra ke raMga se mela KAwA hEM <--mela
;
;--lAyaka
;He is no match to her.
;vaha usake lAyaka nahIM hEM.<-- barAbara nahIM hE <--usase mela nahIM KAwA
;
;--mEca
;Yesterday I enjoyed watching a football match between India&China.
;kala mEneM BArawa Ora cIna ke bIca Kele gae PUta- bAla mEca kA AnaMxa uTAyA.
;
;sUwra : mela`/mEca
;
;
;
