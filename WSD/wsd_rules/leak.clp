
(defrule leak0
(declare (salience 5000))
(id-root ?id leak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cixra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leak.clp 	leak0   "  ?id "  Cixra )" crlf))
)

;"leak","N","1.Cixra"
;The boat has a big leak.
;--"2.mUwrawyAga"
;He has gone for a leak. 
;--"3.rahasya_Kula_jAnA"
;The government should be careful about security leaks.
;
(defrule leak1
(declare (salience 4900))
(id-root ?id leak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id risa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leak.clp 	leak1   "  ?id "  risa )" crlf))
)

;"leak","V","1.risanA/cUkara_nikalanA"
;Water is leaking from the vessel. 
;--"2.prakata_ho_jAnA"
;The examination paper has leaked out.
;
;LEVEL 
;Headword : leak
;
;Examples --
;
;N
;
;--"1.Cixra"
;The boat has a big leak.
;nAva meM badZA Cexa hE.
;A leak in the gas pipe can be dangerous.
;gEsa pAipa meM Cexa honA KawaranAka ho sakawA hE.
;
;--"2.risAva"
;The can has an oil leak.
;kEna meM wela kA risAva hE.
;
;--"3.rahasya_Kula_jAnA"
;The government should be cautious about the security leaks.
;sarakAra ko surakRA sambanXI rahasyoM ke Kula ho jAne ke bAre meM sawarka rahanA cAhiye.
;
;V
;
;--"1.risanA"
;The can is leaking.
;kEna risa rahA hE.
;The oil is leaking out of the can.
;kEna se wela risa rahA hE.
;
;--"2.rahasya_Kula_jAnA"
;The question paper leaked out.
;praSnapawra Kula gayA(parIkRA ke pahale).   ????
;
;anwarnihiwa sUwra ;
;
;risanA--Cixra se bAhara nikalanA - prakata hojAnA -- Kula jAnA (rahasyAxi kA) 
;|
;|--------|---------|
;|                  |
;jo risawA hE vaha    jisase risawA hE vaha
;(wela, pAnI iwyAxi)  (kEna, Cawa, nAva iwyAxi)
;
;
;sUwra : risanA`
