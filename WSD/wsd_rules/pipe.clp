
(defrule pipe0
(declare (salience 5000))
(id-root ?id pipe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id piping )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sItI_jEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pipe.clp  	pipe0   "  ?id "  sItI_jEsA )" crlf))
)

;"piping","Adj","1.sItI_jEsA"
;Her piping voice irritates me a lot.
;
(defrule pipe1
(declare (salience 4900))
(id-root ?id pipe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id piping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id viSeRa_nApa_kA_pAipa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pipe.clp  	pipe1   "  ?id "  viSeRa_nApa_kA_pAipa )" crlf))
)

;"piping","N","1.viSeRa`nApa_kA_pAipa"
;The require 1.meters of lead piping.
;--"2.gota"
;Her skirt was decorated by piping.
;
(defrule pipe2
(declare (salience 4800))
(id-root ?id pipe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bola));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pipe.clp pipe2 " ?id "  bola )" crlf)) 
)

;She soon piped up when i asked the question.
;jEse hI mEne praSna kiyA vaha PatAPata bola padZI
(defrule pipe3
(declare (salience 4700))
(id-root ?id pipe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pipe.clp	pipe3  "  ?id "  " ?id1 "  bola  )" crlf))
)

;She soon piped up when i asked the question.
;jEse hI mEne praSna kiyA vaha PatAPata bola padZI
(defrule pipe4
(declare (salience 4600))
(id-root ?id pipe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAipa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pipe.clp 	pipe4   "  ?id "  pAipa )" crlf))
)

;"pipe","N","1.pAipa"
;--"2.nalikA"
;Nurse was told to put oxyzen pipe on patient's nose
;--"3.cilama/pEpa"
;Raju is a chain pipe smoker
;--"4.bAzsurI"
;Lord Krishna plays pipe very well
;
(defrule pipe5
(declare (salience 4500))
(id-root ?id pipe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nala_se_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pipe.clp 	pipe5   "  ?id "  nala_se_le_jA )" crlf))
)

;"pipe","V","1.nala_se_le_jAnA"
;She is piping water in to the garden.
;--"2.cahakanA"
;The bird is piping a song on the tree.
;
;LEVEL 
;Headword : pipe
;
;Examples --
;1.This is a new drainage pipe.
;yaha pAnI ke nikAsa kI pAipa naI hE.
;2.He smokes his pipe occasionally.
;vaha kaBIkabAra apanI pAipa PUzkawA hE.
;3.They played old tunes on the pipe.
;unhoMne pAipa para purAnI XuneM bajAI.
;4.They are planning to pipe water to the rural areas.
;grAmINa kRewroM meM ve pAipa se pAnI le jAne kI yojanA banA rahe hEM.
;5.The birds are piping away in the backyard.
;piCavAde meM paMCI cahaka rahe hEM.
;6.She piped in her suggestions.
;vaha apane suJAva cahaka uTI.
;
;
;vyAKyA --
;
;uparaliKiwa vAkyoM meM "pipe" Sabxa ke lie jo Binna arWa A rahe hEM, unameM vAswava 
;meM saMbaMXa hE. inameM jo saMbaMXa hEM, use hama isa prakAra samaJa sakawe hEM.
;
;vAkya 1-3 meM "pipe" kA jo arWa A rahA hE, vaha hE, "nalI" kA. vAkya 1. meM nalI
;kA arWa pAnI kI pAipa ke saMxarBa meM A rahA hE. vAkya 2. meM nalI kA arWa XumrapAna 
;karane meM prayoga kI jAnevAlI nalI ke saMxarBa meM A rahA hE. vAkya 3. meM nalI kA arWa
;saMgIwa vAxya ke saMxarBa meM A rahA hE.
;
;vAkya 4. meM "pipe" kA jo arWa A rahA hE, vaha hE "nalI ke xvArA pAnI le jAnA". wo
;nalI kA arWa yahAz kriyA ke rUpa meM prakata howA hE.
;
;vAkya 5 -6 meM "pipe" kA arWa "cahakane" ke arWa meM A rahA hE. nalI yA bAzsurI kI
;avAjZa Ora paMCIoM kI AvAjZa meM samAnawA hone se, Ora kisI swrI ke wIkRNa svara Ora 
;paMCIoM kI cahaka meM samAnawA hone se, nalI ke arWa se cahakane kA arWagrahaNa kiyA jA 
;sakawA hE.
;
;anwarnihiwa sUwra ;
;
;nalI - bAzsurI - ke jEsI AvAjZa
;
;wo aba, hama "pipe" ke lie sUwra kuCa isa prakAra xe sakawe hEM.
;
;sUwra : nalI`
