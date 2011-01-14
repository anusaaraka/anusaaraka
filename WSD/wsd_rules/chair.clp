
(defrule chair0
(declare (salience 5000))
(id-root ?id chair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kursI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chair.clp 	chair0   "  ?id "  kursI )" crlf))
)

(defrule chair1
(declare (salience 4900))
(id-root ?id chair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXyakRawA_niBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chair.clp 	chair1   "  ?id "  aXyakRawA_niBA )" crlf))
)

;"chair","V","1.aXyakRawA_niBAnA"
;Who chaired the meeting yesterday?
;
;LEVEL 
;Headword : chair
;
;Examples --
;
;1. I want a comfortable chair to sit on.
;muJe bETane ke lie eka ArAmaxAyaka kursI cAhie.
;2. They addressed all their complains to the chair.
;unhoMne sArI SikAyaweM aXyakRa ko saMboXiwa kI.
;3. She holds the chair of economics at Boston University.
;vaha bOYstana viSvaviXyAlaya meM arWaSAswra kI aXyakRa hE. 
;4. Will you be chairing the meeting today?
;Aja kI bETaka meM kyA Apa aXyakRawA niBAezge?
;
;uparaliKiwa vAkyoM meM Sabxa "chair" kA viBinna saMxarBoM meM alaga-alaga arWa A rahA hE.
;
;vAkya 1 meM Sabxa "chair" kA arWa "kursI" EsA, A rahA hE. 
;vAkya 2 Ora 3 meM, "chair" kA arWa "aXyakRa" EsA A rahA hE. 
;vAkya 4 meM, "chair" kA arWa kriyA-rUpa meM "aXyakRawA niBAnA" EsA A rahA hE.
;
;kinwu xeKA jAe wo ye saBI Binna laganevAle arWa saMbaMXiwa hEM. jEse vAkya 2 Ora 3 meM
; "chair" kA jo arWa A rahA hE - "aXyakRa" kA, vaha arWa vAkya 1 meM A rahe arWa
;"kursI" se saMbaMXiwa hE. jo vyakwi koI paxa prApwa karawA hE, vaha vyakwi usake
; paxa ke anusAra kursI XAraNa karawA hE. wo isa arWa meM vAkya 2 Ora 3 meM "chair" kA
; arWa hogA "kursI XAraNa karanevAlA". azgrejZI meM isa vAkyAMSa kA arWa,Ese saMxarBa meM eka Sabxa "chair" ke xvArA prApwa howA hE.
;vAkya 4 meM BI isa arWa kA kriyA ke rUpa meM prayoga howA hE.
;
;wo aba hama, 'chair' Sabxa ke anwarnihiwa sUwra ke xvArA ina arWoM ke bIca saMbaMXa isa prakAra xiKA sakawe hEM:
;
;anwarnihiwa sUwra ;
;kursI -  kursI_XAraNa_karanevAlA [aXyakRa] - kursI_XAraNa_karane_kI_kriyA [aXyakRawA_niBAnA ]
;
;sUwra : kursI`
;
;"chair","N","kursI/aXyakRa"
;"chair","V","aXyakRawA_niBAnA"
