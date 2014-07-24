
(defrule level0
(declare (salience 5000))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samawala_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " level.clp level0 " ?id "  samawala_ho )" crlf)) 
)

(defrule level1
(declare (salience 4900))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samawala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " level.clp	level1  "  ?id "  " ?id1 "  samawala_ho  )" crlf))
)

(defrule level2
(declare (salience 4800))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  level.clp 	level2   "  ?id "  swara )" crlf))
)

;Added by human
(defrule level3
(declare (salience 4700))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 certain)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  level.clp 	level3   "  ?id "  swara )" crlf))
)

(defrule level4
(declare (salience 4600))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  level.clp 	level4   "  ?id "  swara )" crlf))
)

;$$$ Modified by Nandini(15-4-14) ; Add eng & hin sentence
;I had a gun levelled at my head.[olad]
;
(defrule level5
(declare (salience 4500))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSAnA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  level.clp 	level5   "  ?id "  niSAnA_lagA )" crlf))
)

;@@@   --- Added by Nandini(15-4-14)
;The level of the platform is very high.[hinKoja-dict]
;pletaPoYrma kI sswaha bahuwa UzcI hE.
(defrule level6
(declare (salience 4850))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 platform|bridge|road)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  level.clp 	level6   "  ?id "  sawaha )" crlf))
)

;@@@   --- Added by Nandini(15-4-14)
;The pitch has been well levelled.
;pica ko acCI waraha samawala banAyA gayA hE.
(defrule level7
(declare (salience 5050))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 pitch|ground)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samawala_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  level.clp 	level7   "  ?id "  samawala_banA )" crlf))
)

;@@@   --- Added by Nandini(15-4-14)
;The floodwater nearly reached roof level.[olad]
;bADaZ kA pAnI karIba Cawa kI UzcAI waka pahuzcA.
(defrule level8
(declare (salience 4850))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  level.clp 	level8   "  ?id "  UzcAI)" crlf))
)

;@@@   --- Added by Nandini(15-4-14)
;The library is all on one level.[olad]
;puswakAlaya eka hI sawaha para hE.
(defrule level9
(declare (salience 4850))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-saMKyA_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  level.clp 	level9   "  ?id "  sawaha)" crlf))
) 

;@@@   --- Added by Nandini(15-4-14)
;The tables are not on a level.
(defrule level10
(declare (salience 4850))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  UzcAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  level.clp 	level10   "  ?id "  UzcAI)" crlf))
)

;@@@   --- Added by Nandini(15-4-14)
;Add a level tablespoon of flour.[oald]
;Ate kA eka samawal badA cammaca milAo.
(defrule level11
(declare (salience 5080))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(kriyA-object  ?id2 ?id1)
(id-root ?id1 tablespoon|teaspoon)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samawala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  level.clp 	level11   "  ?id "  samawala )" crlf))
)

;@@@   --- Added by Nandini(15-4-14)
;The blast levelled several buildings in the area.
;XamAke ne kRewra meM kaI imAraweM naRta kI WI.
(defrule level12
(declare (salience 4550))
(id-root ?id level)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 blast)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  level.clp 	level12   "  ?id "  naRta_kara )" crlf))
)


;default_sense && category=verb	samAna swara kA banA	0
;"level","V","1.samAna swara kA banAnA"
;Positive discrimination is supposed to level the differences among the different social groups.
;--"2.samawala karanA"
;The pitch has been well levelled.
;
;
;LEVEL 
;
;
;"level","Adj","1.samawala"
;Add one level teaspoon of sugar in my tea.
;merI cAya meM eka samawala cammaca cInI kA dAlo.<--samawala <--wala <-- sawaha
;
;--"2.samAna swarIya"                                                        
;Both the posters aren't quite level, the right one is little higher than the other
;xonoM postaras samAna swara para nahIM hEM xAzyA vAlA xUsare kI apekRA kuCa Upara hE .<--samAna swara<-- sama<--samAna sawaha<-- sawaha
;--"3.samapaxIya/samAna swaravAlA"
;Regarding studies both the children are at the same level
;paDZAI ke viRaya meM xonoM bacce samAna swara para hEM <-- samAna swara
;
;"level","N","1.swara"
;The level of sugar in his blood has gone down.
;Sakkara kA swara usake KUna meM nIce calA gayA hE <--swara
;
;--"2.sApekRika swara"
;He is at a lower level than his friend.
;vaha apane miwra kI apekRA nimna swara para hE. <--swara
;
;The level of the platform is very high.
;
;
;pletaPArma kI sawaha bahuwa UzcI hE <--sawaha<--swara
;
;--"4.parawa"
;Some pieces of pottery were found in the lowest level of the excavations.
;KuxAI kI nimnawara parawa meM kuCa tukadZe mittI ke barwana ke mile.<--parawa<--swara
;
;"level","V","1.samAna swara kA banAnA"
;Positive discrimination is supposed to level the differences among the different
; social groups.
;EsA viSvAsa kiyA jAwA hE ki sakArAwmaka viBexIkaraNa viBinna sAmAjika vargoM ke anwara ko samAna swara para lAwA hE.<--samAna swara kA banAnA<--swara
;
;--"2.samawala karanA"
;The pitch has been well levelled.
;pica acCI waraha samawala kara xI gayI hE.<--samawala karanA<--barAbara karanA<--sama=samAna swara
;
;nota:-- uparyukwa saBI vAkyoM kA viSleRaNa karane ke uparAnwa,hama isa nawIje para pahuzca sakawe hEM ki "level" Sabxa kA arWa <--samAna swara ,se le sakawe hEM  
;isakA nABikIya sUwra isa prakAra liKa sakawe hEM
;     
;sUwra : swara[<samawala]
;
