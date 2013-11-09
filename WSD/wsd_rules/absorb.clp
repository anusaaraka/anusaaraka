
(defrule absorb0
(declare (salience 5000))
(id-root ?id absorb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_magna_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " absorb.clp absorb0 " ?id "  meM_magna_ho )" crlf)) 
)

(defrule absorb1
(declare (salience 4900))
(id-root ?id absorb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_magna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " absorb.clp	absorb1  "  ?id "  " ?id1 "  meM_magna_ho  )" crlf))
)

(defrule absorb2
(declare (salience 4800))
(id-root ?id absorb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id absorbed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id lIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  absorb.clp  	absorb2   "  ?id "  lIna )" crlf))
)

;"absorbed","Adj","1.lIna/soKA_huA"
;I was totally absorbed in the novel.
;
(defrule absorb3
(declare (salience 4700))
(id-root ?id absorb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soKa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  absorb.clp 	absorb3   "  ?id "  soKa_le )" crlf))
)

;default_sense && category=verb	soKa	0
;"absorb","VT","1.soKanA"
;Dry sand absorbs water.
;--"2.grahaNa_karanA"
;His business absorbs his time.
;
;
;LEVEL 
;
;
;
;"absorb"
;
;'absorb' ko lekara kiyA gayA prayAsa :-
;
;
;Plants absorb oxygen
;pOXe OYksIjana anxara ko KIMcawe hEM.  anxara_KIMcanA <-- soKa
;
;Ours is a society that has absorbed others' cultures.
;hamArA samAja ekaEsA samAja hE jisane xUsaroM kI saMskqwiyoM ko AwmasAwa kara liyA hE.
;     AwmasAwa_kara <-apane anxara KIMcanA <-soKanA
;
;The suburbs have now been absorbed by the main city.
;mahAnagaroM ne apane upanagaroM ko nigala liyA hE. nigala<---anxara_KIMcanA<--soKanA
;
;Children these days absorb information. soKa/nigala
;Ajakala bacce sUcanA nigalawe hEM.  nigala<---anxara_KIMcanA<--soKanA
;
;Shock absorber*
;SAka AwmasAwa kara lenevAlA.  AwmasAwa_kara <-apane anxara KIMcanA <-soKanA
;
;He is completely absorbed by his work.
;vaha apane kAma meM pUrI wOra se wallIna hE.
;wallIna honA <- kisI cIjZa meM KonA <- ke anxara KiMcanA <- ke xvArA soKe jAnA
;
;He is completely absorbed in the book.
;vaha puswaka meM pUrI wOra se wallIna hE.
;wallIna honA <- kisI cIjZa meM KonA <- ke anxara KiMcanA <- ke xvArA soKe jAnA
;
;Defence expenditures absorb over half of the public funds.
;rakRA sAXanoM para hone vAlA vyaya sArvajanika KajAne ke AXe se aXika BAga ko cUsa lewA hE
;.
; cUsanA/nigalanA <-soKanA
; 
;anwarnihiwa sUwra ;
;soKanA --kisI cIjZa ko nigalanA/kisI cIjZa ke xvArA nigale jAnA
;-wallIna honA
;
;isakA sUwra banawA hE:-
;
;sUwra : soKa`[<anxara_KIcanA]
;
;'soKa`' yaha bawAwA hE ki 'soKa' mAwra hinxI meM samaJA jAnevAlA 'soKanA' nahIM
;hE, balki usI BAva ko Age le jAyA jA sakawA hE waWA yaxi koI kisI vaswu yA
;BAva meM pUrI waraha se dUba jAe (wallIna ho jAe) WaWa kisI ko pUrI wOra se apane
;meM KIMca le - ye saBI BAva 'soKa`' meM Aezge. waWA ina saBI arWoM kA wAra
;'soKa`[<anxara_KIMcanA]' sUwra meM hE.
;
;
;
(defrule absorb4
(declare (salience 4600))
(id-root ?id absorb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id absorbing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xilacaspa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  absorb.clp  	absorb4   "  ?id "  xilacaspa )" crlf))
)

;"absorbing","Adj","1.xilacaspa"
;`The English Patient' is an absorbing novel.
;
(defrule absorb5
(declare (salience 4500))
(id-root ?id absorb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_magna_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " absorb.clp absorb5 " ?id "  meM_magna_ho )" crlf)) 
)

(defrule absorb6
(declare (salience 4400))
(id-root ?id absorb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_magna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " absorb.clp	absorb6  "  ?id "  " ?id1 "  meM_magna_ho  )" crlf))
)

(defrule absorb7
(declare (salience 4300))
(id-root ?id absorb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soKa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  absorb.clp 	absorb7   "  ?id "  soKa_le )" crlf))
)

;Added by sheetal(8-10-09).
(defrule absorb8
(declare (salience 4950))
(id-root ?id absorb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 information|culture)
(kriyA-object ?id ?id1) ;Added by sheetal the fact '(kriyA-object ?id ?id1)'12-12-09
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmasAw_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  absorb.clp    absorb8   "  ?id "  AwmasAw_kara )" crlf))
)
;It is hard to absorb so much information .Ours is a society that has absorbed others' cultures .

;default_sense && category=verb	soKa	0
;"absorb","VT","1.soKanA"
;Dry sand absorbs water.
;--"2.grahaNa_karanA"
;His business absorbs his time.
;
;
;LEVEL 
;
;
;
;"absorb"
;
;'absorb' ko lekara kiyA gayA prayAsa :-
;
;
;Plants absorb oxygen
;pOXe OYksIjana anxara ko KIMcawe hEM.  anxara_KIMcanA <-- soKa
;
;Ours is a society that has absorbed others' cultures.
;hamArA samAja ekaEsA samAja hE jisane xUsaroM kI saMskqwiyoM ko AwmasAwa kara liyA hE.
;     AwmasAwa_kara <-apane anxara KIMcanA <-soKanA
;
;The suburbs have now been absorbed by the main city.
;mahAnagaroM ne apane upanagaroM ko nigala liyA hE. nigala<---anxara_KIMcanA<--soKanA
;
;Children these days absorb information. soKa/nigala
;Ajakala bacce sUcanA nigalawe hEM.  nigala<---anxara_KIMcanA<--soKanA
;
;Shock absorber*
;SAka AwmasAwa kara lenevAlA.  AwmasAwa_kara <-apane anxara KIMcanA <-soKanA
;
;He is completely absorbed by his work.
;vaha apane kAma meM pUrI wOra se wallIna hE.
;wallIna honA <- kisI cIjZa meM KonA <- ke anxara KiMcanA <- ke xvArA soKe jAnA
;
;He is completely absorbed in the book.
;vaha puswaka meM pUrI wOra se wallIna hE.
;wallIna honA <- kisI cIjZa meM KonA <- ke anxara KiMcanA <- ke xvArA soKe jAnA
;
;Defence expenditures absorb over half of the public funds.
;rakRA sAXanoM para hone vAlA vyaya sArvajanika KajAne ke AXe se aXika BAga ko cUsa lewA hE
;.
; cUsanA/nigalanA <-soKanA
; 
;anwarnihiwa sUwra ;
;soKanA --kisI cIjZa ko nigalanA/kisI cIjZa ke xvArA nigale jAnA
;-wallIna honA
;
;isakA sUwra banawA hE:-
;
;sUWa_ra : soKa`[<anxara_KIcanA]
;
;'soKa`' yaha bawAwA hE ki 'soKa' mAwra hinxI meM samaJA jAnevAlA 'soKanA' nahIM
;hE, balki usI BAva ko Age le jAyA jA sakawA hE waWA yaxi koI kisI vaswu yA
;BAva meM pUrI waraha se dUba jAe (wallIna ho jAe) yA kisI ko pUrI wOra se apane
;meM KIMca le - ye saBI BAva 'soKa`' meM Aezge. waWA ina saBI arWoM kA wAra
;'soKa`[<anxara_KIMcanA]' sUwra meM hE.
;
;
;
