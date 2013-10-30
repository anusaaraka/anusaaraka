
(defrule strike0
(declare (salience 5000))
(id-root ?id strike)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stricken )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xuHKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  strike.clp  	strike0   "  ?id "  xuHKI )" crlf))
)

;"stricken","Adj","1.xuHKI"
;The whole nation was grief stricken when Mahatma Gandhi died.
;
;particle_off_- && category=verb	kAta_xe	100
(defrule strike1
(declare (salience 4900))
(id-root ?id strike)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " strike.clp	strike1  "  ?id "  " ?id1 "  kAta_xe  )" crlf))
)

(defrule strike2
(declare (salience 4800))
(id-root ?id strike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id strAika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strike.clp 	strike2   "  ?id "  strAika )" crlf))
)

;default_sense && category=noun	hadZawAla	0
;"strike","N","1.hadZawAla"
;Factory workers are on strike because they want bonus.
;
;LEVEL 
;
;
; "strike" Sabxa para "sUwra" (nibanXa) kA prayAsa :-
;
;"strike","N","1.hadZawAla"
;Laborers organised a strike so as to increase their wages.
;
;"strike","V","1.jZora se mAranA"
;The car struck the pole.
;--"2.acAnaka mAranA"
;Ram struck Rahul because of jeolousy.
;--"3.sUJanA"
;An idea of how to make a model plane struck Bob today.
;--"4.praBAva dAlanA'
;Her looks struck Rahul.
;--"5.padZanA"
;I was struck between two loyalties.
;--"6.KojZa karanA"
;A rich reserve of petroleum has been struck in Bombay highway.
;--"7.sikke dAlanA"
;The government will strike a Re.1 coin.
;--"8.bajanA"
;Mary heard the clock strike.
;
;
;                 strike  
;                 ------
;isa Sabxa ke saBI prayogoM meM eka arWa sAmAnyawaH xeKA jA sakawA hE,
;jisase isa eka Sabxa kA arWa-viswAra ho rahA hE .
;vaha hE `takarAhata' sambanXiwa arWa . 
;       ye `takarAhata' sambanXiwa arWa xo waraha se aBivyakwa 
;ho rahA xIKa rahA hE . 1) BOwika rUpa meM, 2) bOxXika rUpa meM .
;BOwika prayoga se hI bOxXika prayoga ke vikAsa kI samBAvanA aXika xIKawI hE .
;jaba yaha arWa BOwika rUpa meM hE, waba yaha sAmAnyawaH `takkara mAranA'
;`takkara KAnA' `takarAnA' Axi ke rUpa meM hE . `takarAnA' isa Sabxa kA
;sAmAnyIkaraNa `AkramaNa karanA' ke rUpa meM xeKA jA sakawA he .
;cUzki AkramaNa meM `takarAnA' anwarnihiwa hE . 
;jaba yaha bOxXika rUpa meM hE, waba isakA arWa `sUJanA' `JalakanA' 
;Axi ke rUpa meM hE . bOxXika rUpa meM isa arWa kA kAraNa mUlawaH takarAne
;ke arWa meM hE . kAraNa- jaba koI vicAra buxXi meM takarAwA hE, waBI kuCa 
;sUJawA yA JalakawA hE . 
;    ina saBI waWyoM ko SabxArWa ke sUwra-rUpa meM isa prakAra raKA jA sakawA hE-
;             "-mAranA"
;
;----------------------------------------------------------------------
;`hadawAla' aBI avaSiRta hE . usake lie samBavawaH EsA xenA ho-
;             "takkara{karwwAnusAra}_mAranA"
;----------------------------------------------------------------------
;
;---------
; yaxi isa prakAra kA vivaraNa `helpa' meM xiyA jA rahA ho wo samBavawaH isa waraha 
;liKanA paryApwa ho- 
;          "takkara`[Jalaka]{0}/hadawAla"
;hadawAla ke rUpa meM yaha rUDa ho cukA hE, awaH EsA xiyA jA sake . nahIM wo 
;xevanAgarI meM Sabxa ko liKA jA sake, isase hadawAla samaJane meM kaTinAI nahIM hogI . 
;kAraNa isa arWa meM prayoga Ama hE . Ese-
;
;sUwra : takkara`[Jalaka]/strAika
;---------
;
(defrule strike3
(declare (salience 4700))
(id-root ?id strike)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id striking )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XyAna_AkarRiwa_karanevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  strike.clp  	strike3   "  ?id "  XyAna_AkarRiwa_karanevAlA )" crlf))
)

;"striking","Adj","1.XyAna_AkarRiwa_karanevAlI"
;There is a striking similarity between my two sketches.
;
(defrule strike4
(declare (salience 4600))
(id-root ?id strike)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " strike.clp	strike4  "  ?id "  " ?id1 "  kAta_xe  )" crlf))
)

(defrule strike5
(declare (salience 4500))
(id-root ?id strike)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " strike.clp	strike5  "  ?id "  " ?id1 "  kAta_xe  )" crlf))
)

(defrule strike6
(declare (salience 4400))
(id-root ?id strike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id strAika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strike.clp 	strike6   "  ?id "  strAika )" crlf))
)

;default_sense && category=noun	hadZawAla	0
;"strike","N","1.hadZawAla"
;Factory workers are on strike because they want bonus.
;
;LEVEL 
;
;
; "strike" Sabxa para "sUwra" (nibanXa) kA prayAsa :-
;
;"strike","N","1.hadZawAla"
;Laborers organised a strike so as to increase their wages.
;
;"strike","V","1.jZora se mAranA"
;The car struck the pole.
;--"2.acAnaka mAranA"
;Ram struck Rahul because of jeolousy.
;--"3.sUJanA"
;An idea of how to make a model plane struck Bob today.
;--"4.praBAva dAlanA'
;Her looks struck Rahul.
;--"5.padZanA"
;I was struck between two loyalties.
;--"6.KojZa karanA"
;A rich reserve of petroleum has been struck in Bombay highway.
;--"7.sikke dAlanA"
;The government will strike a Re.1 coin.
;--"8.bajanA"
;Mary heard the clock strike.
;
;
;                 strike  
;                 ------
;isa Sabxa ke saBI prayogoM meM eka arWa sAmAnyawaH xeKA jA sakawA hE,
;jisase isa eka Sabxa kA arWa-viswAra ho rahA hE .
;vaha hE `takarAhata' sambanXiwa arWa . 
;       ye `takarAhata' sambanXiwa arWa xo waraha se aBivyakwa 
;ho rahA xIKa rahA hE . 1) BOwika rUpa meM, 2) bOxXika rUpa meM .
;BOwika prayoga se hI bOxXika prayoga ke vikAsa kI samBAvanA aXika xIKawI hE .
;jaba yaha arWa BOwika rUpa meM hE, waba yaha sAmAnyawaH `takkara mAranA'
;`takkara KAnA' `takarAnA' Axi ke rUpa meM hE . `takarAnA' isa Sabxa kA
;sAmAnyIkaraNa `AkramaNa karanA' ke rUpa meM xeKA jA sakawA he .
;cUzki AkramaNa meM `takarAnA' anwarnihiwa hE . 
;jaba yaha bOxXika rUpa meM hE, waba isakA arWa `sUJanA' `JalakanA' 
;Axi ke rUpa meM hE . bOxXika rUpa meM isa arWa kA kAraNa mUlawaH takarAne
;ke arWa meM hE . kAraNa- jaba koI vicAra buxXi meM takarAwA hE, waBI kuCa 
;sUJawA yA JalakawA hE . 
;    ina saBI waWyoM ko SabxArWa ke sUwra-rUpa meM isa prakAra raKA jA sakawA hE-
;             "-mAranA"
;
;----------------------------------------------------------------------
;`hadawAla' aBI avaSiRta hE . usake lie samBavawaH EsA xenA ho-
;             "takkara{karwwAnusAra}_mAranA"
;----------------------------------------------------------------------
;
;---------
; yaxi isa prakAra kA vivaraNa `helpa' meM xiyA jA rahA ho wo samBavawaH isa waraha 
;liKanA paryApwa ho- 
;          "takkara`[Jalaka]{0}/hadawAla"
;hadawAla ke rUpa meM yaha rUDa ho cukA hE, awaH EsA xiyA jA sake . nahIM wo 
;xevanAgarI meM Sabxa ko liKA jA sake, isase hadawAla samaJane meM kaTinAI nahIM hogI . 
;kAraNa isa arWa meM prayoga Ama hE . Ese-
;
;sUwra : takkara`[Jalaka]/strAika
;---------
;
