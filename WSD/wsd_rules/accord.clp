
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)4-Feb-2014
;This action would not be in accord with our policy.[oald]
;यह कार्य हमारी नीति से सहमती में नहीं है
(defrule accord3
(declare (salience 5000))
(id-root ?id accord)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahamawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accord.clp    accord3   "  ?id " sahamawI   )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)4-Feb-2014
;These results accord closely with our predictions.[oald]
;यह परिणाम हमारी भविष्यवाणियों से मेल खाते है 
(defrule accord4
(declare (salience 5000))
(id-root ?id accord)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mela_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accord.clp    accord4   "  ?id " mela_KA   )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)4-Feb-2014
;Our society accords the family great importance.[oald]
;हमारा समाज परिवार को बहुत अधिक महत्व देता है .
(defrule accord5
(declare (salience 5000))
(id-root ?id accord)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_2  ?id ?)
(kriyA-object_1  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(assert (kriyA_id-object_1_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accord.clp    accord5   "  ?id " xe   )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_1_viBakwi   " ?*wsd_dir* " accord.clp    accord5   "  ?id " ko )" crlf)
)
)


;Added by Meena(29.7.11)
;The accord expired yesterday.
;The two sides were able to reach an accord.
(defrule accord2
(declare (salience 5000))
(id-root ?id accord)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 expire|sign|reach|bring)
(or(kriyA-object ?id1 ?id)(kriyA-subject ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anubanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accord.clp    accord2   "  ?id " anubanXa   )" crlf))
)



;***********************************DEFAULT RULES***************************************

(defrule accord0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id accord)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id according )
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ke_anusAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  accord.clp  	accord0   "  ?id "  ke_anusAra )" crlf))
)

;"according","Prep","1.ke_anusAra"
;The work was done according to his instructions.
;
(defrule accord1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id accord)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accord.clp 	accord1   "  ?id "  xe )" crlf))
)


;default_sense && category=verb	milanA[milAnA]	0
;"accord","V","1.milanA[milAnA]"
;His thoughts && actions do not accord.
;--"2.xenA"
;Ram was accorded this priviledge.
;
;LEVEL 
;Headword : accord
;
;Examples --
;"accord","N","samaJOwA"
;Indo-China accord is to be signed soon.
;BArawa-cIna  samaJOwe para  SIGra haswAkRara hone vAlA hE
;
;"accord","V","1.mela_KAnA"
;His ideals && actions do not accord.
;usake vicAra Ora kAma mela nahIM KAwe.
;--"2.xenA{aXikAra}"
;The company accorded him permission to attend the Conference.
;kampanI ne use sammelana me upasWiwa hone kI anumawi xe xI. 
;
;        
;ukwa uxAharaNoM meM pahale xo arWoM se EsA lagawA hE ki 'accord' Sabxa meM 'mela_hone' kA BAva hE. wIsare arWa 'xenA' se yaha arWa bilkula Binna lagawA hE. lekina kuCa gaharAI se socane pe EsA lagawA hE ki yahAz 'xenA' sAmAnya 'xenA' nahIM hE. yahAz 'xene' meM kuCa 'sahamawi' kA BAva hE. 'sahamawi' yAni 'mawoM kA mela'. awaH isa xqRti se yaha BI
;'mela_KAnA' se judZa jAwA hE.
;
; ina AXAroM para isakA nimna sUwra banA akawe hEM --
;
; sUwra : samaJOwA^mela^xenA
