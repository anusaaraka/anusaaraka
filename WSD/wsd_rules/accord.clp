
(defrule accord0
(declare (salience 5000))
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
(declare (salience 4900))
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
