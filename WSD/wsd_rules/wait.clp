
;PP_null_for && category=verb	prawikRA_kara<obj:kI>	0
(defrule wait0
(declare (salience 5000))
(id-root ?id wait)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawIkRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wait.clp 	wait0   "  ?id "  prawIkRA_kara )" crlf))
)

(defrule wait1
(declare (salience 4900))
(id-root ?id wait)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawIkRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wait.clp 	wait1   "  ?id "  prawIkRA )" crlf))
)

;default_sense && category=noun	prawIkRA	0
;"wait","N","1.prawIkRA"
;He had a long wait for the train
;
;
;LEVEL 
;Headword : wait
;
;Examples --
;
;"wait","N","1.prawIkRA"
;He had a long wait for the train.
;usane trena ke liye lambI prawIkRA kI.
;
;"wait","VTI","1.prawIkRA_karanA"
;He waited at the bus stop.
;usane basa stOYpa para prawIkRA kI.
;--"2.rokanA"
;This file can wait till tomorrow. 
;isa PAila ko kala waka rokA jA sakawA hE. <--isako nibatAne kI kala waka prawIkRA kI jA sakawI hE.
;The train waited at the outer signal.
;trena bAharI siganala para rukI rahI. <-- trena{drAivara} signala ke baxalane kI prawIkRA karawI rahI.
;
;"wait on table","IDM","1.sevA_tahala_karanA{Bojana_iwyAxi_ke_liye}"
;The waiter waiting on table next to ours hurried towards the kitchen.
;hamAre pAsa vAlI mejZa para sevA_tahala_kara_rahA vetara wejZI se rasoI kI ora BAgA.
;
;"wait at table","IDM","1.sevA_tahala_karanA{Bojana_iwyAxi_ke_liye}"
;
;"wait table","IDM","1.sevA_tahala_karanA{Bojana_iwyAxi_ke_liye}"
;
;
;aMgrejZI Sabxa 'wait' kA mUlArWa 'prawIkRA' howA hE. jaba yaha kriyA rUpa meM prayoga howA hE wo isakA arWa 'prawIkRA_karanA' ho jAwA hE. isa Sabxa kA yahI BAva
;'rokanA' meM BI samAhiwa hE. jaba kisI kAma ko karane kI prawIkRA kI jA sakawI hE
;waBI use kuCa xera ke liye rokA jA sakawA hE. muhAvare ke prayoga meM BI isakA mUla arWa banA rahawA hE. jaba loga Bojana kara rahe howe hEM wo unako Bojana Axi xenevAlA unakI
;jZarUrawoM ko pUrA karane kI prawIkRA karawA hE. isaprakAra isa Sabxa kA mUla arWa 'prawIkRA' banA rahawA hE. isakA sUwra nimna ho sakawA hE --
;
;sUwra : prawIkRA^rukanA
