
;"crossing","N","1.cOrAhA"
;Main crossing at Punja gutta is always busy.
;
;
(defrule cross0
(declare (salience 5000))
(id-root ?id cross)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 reKA_KIca_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cross.clp	cross0  "  ?id "  " ?id1 "  reKA_KIca_xe  )" crlf))
)

;If you make a mistake just cross it out.


;Modified by Meena(3.9.10);changed (assert (id-wsd_word_mng  .. ..) to (assert (id-wsd_root_mng .. ..)
;Look both ways before crossing the road.
(defrule cross1
(declare (salience 4900))
(id-root ?id cross)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id crossing )
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAra_kara))
(assert (id-H_vib_mng ?id ing))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  cross.clp  	cross1   "  ?id "  pAra_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  cross.clp      cross1   "  ?id " ing )" crlf))
)

(defrule cross2
(declare (salience 4800))
(id-root ?id cross)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id crossing )
;(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa ?id ?id1)(viSeRya-det_viSeRaNa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cOrAhA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cross.clp  	cross2   "  ?id "  cOrAhA )" crlf))
)

;yaxi wuma galwI karo wo vahAz eka reKA KIMca xenA
(defrule cross3
(declare (salience 4700))
(id-root ?id cross)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiraCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cross.clp 	cross3   "  ?id "  wiraCA )" crlf))
)

(defrule cross4
(declare (salience 4600))
(id-root ?id cross)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id krusa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cross.clp 	cross4   "  ?id "  krusa )" crlf))
)

(defrule cross5
(declare (salience 4500))
(id-root ?id cross)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cross.clp 	cross5   "  ?id "  pAra_kara )" crlf))
)

;default_sense && category=verb	pAra_uwAranA/pAra_kara	0
;"cross","VT","1.pAra_uwAranA/pAra_karanA"
;Look before you cross the road.
;The river is too deep,we can not cross over. 
;--"2.koI_bAwa_XyAna_me_AnA"
;A new idea crossed her mind. 
;--"3.kisI_galawa_bAwa_ko_kAtanA"  
;Two sentences have been crossed out from the paragraph. 
;--"4.mArga_meM_milanA"
;We crossed each other on the way.
;The trains crossed
;--"5.rokanA/viroXa_karanA"
;She was angry when her plans were crossed. 
;--"6.eka_xUsare_ko_kAtanA"  
;Let straight lines,AB && CD cross each other at O. 
;--"7.krAsa_kA_cihna_banAnA"  
;She crossed herself as she passed the church. 
;
;
;LEVEL 
;
;
;               `cross'  "sUwra" (nibanXa)
;                -------
;
;`cross' Sabxa ke viviXa prayoga--
;-------------------------
; 
;"cross","Adj","1.AdZA/wiraCA/2.cidZacidZA/haTI/3.prawikUla"
;He gave her a cross look. 
;                       ------gusse_BarA <--- wiraCA <  `x' 
;What are you so cross about? 
;                       ------ciDZA_huA <--- teDe < `x'
;Strong cross winds make it impossible for boats to leave harbour.
;                   prawikUla<---wiraCI_havAez <--- wiraCA < `x'
;"cross","N","1.guNA_yA_Xana_kA_niSAna"
;                       ------- < `x' 
;The crop regions are marked on the map with a cross{+,x}.
;--"2.kaRta/saMkata"     
;                       -------kaRta<---boJa <---krAsa kA boJa<---<`x'
;We all have our crosses to bear && to live with it.
;--"3.saMkara"       
;            ------ eka-xUsare kA rAswA kAtanA < `x' (xo pqWak jAwiyoM kA milana)
;A mule is a cross between a horse && a donkey.
;--"4.IsAI_Xarma_kA_cihna/krUSa" 
;                       ------- < `+' <`x'
;She wears a small golden cross on a chain round her neck.
;The cross on which Christ died.
;
;"cross","VT","1.pAra_uwAranA/pAra_karanA"  
;                        -----Ara-pAra honA <---krAsa_karanA < `x'
;Look before you cross the road.
;The river is too deep,we can not cross over.
;--"2.koI_bAwa_XyAna_me_AnA"
;                       -----ximAga meM bAwa eka ora se Akara xUsarI ora se nikala jAnA <-- krAsa_honA <-- `x'
;A new idea crossed her mind.
;--"3.kisI_galawa_bAwa_ko_kAtanA" 
;                      -------kAtanA <-- `x'
;Two sentences have been crossed out from the paragraph.
;--"4.mArga_meM_milanA" 
;                      ------xo alaga alaga xiSAoM se Akara eka binxu para milanA Ora Pira apane apane rAswe Age baDZa jAnA <--- `x'
;We crossed each other on the way.
;The trains crossed
;--"5.rokanA/viroXa_karanA" 
;                      ------- < `x'
;She was angry when her plans were crossed.
;--"6.eka_xUsare_ko_kAtanA"
;                      ------- < `x'
;Let straight lines,AB && CD cross each other at O.
;--"7.krAsa_kA_cihna_banAnA" 
;                      ---- `+' < `x'
;She crossed herself as she passed the church.
;----------------------------------------------------
;
;sUwra : +x
;-------------
;
;sUwra ko samaJane hewu sUwra-saMGataka waWya--
;
;-- yaha Sabxa `x' isa cihna se hI aswiwva meM AyA lagawA hE . yahAz `cihna' arWAw
;   krAsa kA cihna(isakA mUla BI svaswika kA cihna Ora yaha + waWA x xono hI prakAra se
;   samBava hE).
;
;-- isameM viSeRaNoM, saMjFAoM, va kriyAoM meM Aye saBI lakRaNa xeKe jA sakawe hEM .
;
;-- IsAIyoM se saMbaxXa saBI prayogoM hewu `krAsa' kA cihna wo hE hI .
;
;-- isameM wiraCApana praWamaxqRtyA xiKAI xewA hE . usIse saBI viSeRaNa va saMjFA Sabxa
;   sambanXiwa hEM . jEse- kaRta, saMkara, Axi .
;   kaRta yA saMkata ke lie hinxI meM `mere jIvana meM wo saba teDA hI teDA hE' kA
;   prayoga Ama hE . saMkarawA meM xo pqWak jAwiyoM kA milana howA hE .  
;   isaprakAra ke prayoga prAyaH saBI BARAoM meM hEM . 
;
;-- kriyASabxoM hewu kahA jA sakawA hE ki isa `krAsa' cihna meM `kAtanA', `milanA',
;   `pAra karanA' Axi saBI spaRta xiKAI xewe hEM . saralawA se ina bAwoM ko samaJA
;   jA sakawA hE .   
;
;
