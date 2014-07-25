;$$$        --- Modified by Nandini(11-4-14)
;The boat has a big leak.
;nAva meM badZA Cexa hE.
(defrule leak1           ; rule name change
(declare (salience 1000))  ; salience change
(id-root ?id leak)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
;(id-root ?id1 big)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa)) ; meaning name change
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leak.clp 	leak1   "  ?id "  Cexa )" crlf))
)

;"leak","N","1.Cixra"
;The boat has a big leak.
;--"2.mUwrawyAga"
;He has gone for a leak. 
;--"3.rahasya_Kula_jAnA"
;The government should be careful about security leaks.
;
;$$$--- Modified by Nandini(11-4-14)
;Water is leaking from the vessel. [from clp] ;Added Eng-sentence
;barawana se pAnI risa rahA hE.                    ;Added hin-sentence
(defrule leak2
;(declare (salience 4900))      ; salience change
(declare (salience 4000))
(id-root ?id leak)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 water|milk)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id risa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leak.clp 	leak2   "  ?id "  risa )" crlf))
)

;@@@   --- Added by Nandini(11-4-14)
;The can has an oil leak.
;dibbe se wela kA risAva ho rahA hE.[from clp]
(defrule leak0
;(declare (salience 1000))
(id-root ?id leak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id risAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leak.clp 	leak0   "  ?id "  risAva )" crlf))
)

;@@@   --- Added by Nandini(11-4-14)
;Before examination question paper has leaked out.[from clp]
;parIkRA ke pahale praSnapawra Kula gayA. 
(defrule leak3
(declare (salience 5000))
(id-root ?id leak)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-before_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kula_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " leak.clp	leak3  "  ?id "  " ?id1 "  Kula_jA )" crlf))
)


;@@@   --- Added by Nandini(11-4-14)
;The government should be careful about security leaks.[oald]
;sarakAra ko surakRA sambanXI rahasya Kula jAne ke bAre meM sawarka rahanA cAhiye.
(defrule leak4
(declare (salience 2000))
(id-root ?id leak)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-about_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rahasya_Kula_jAnA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leak.clp 	leak4   "  ?id "  rahasya_Kula_jAnA )" crlf))
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
