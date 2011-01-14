
(defrule comb0
(declare (salience 5000))
(id-root ?id comb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kaMGI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " comb.clp	comb0  "  ?id "  " ?id1 "  kaMGI_kara  )" crlf))
)

;She sat in front of the mirror,combing out her long hair.
;vaha SISe ke sAmane bETI apane lambe bAloM meM kaMGI kara rahI WI
(defrule comb1
(declare (salience 4900))
(id-root ?id comb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMGA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  comb.clp 	comb1   "  ?id "  kaMGA )" crlf))
)

;"comb","N","1.kaMGA"
;His hair needed a comb
;--"2.kukkutaSiKA"
;The cock had a colourful comb.
;--"3.CawwA"
;Don't disturb the honeycomb.
;
(defrule comb2
(declare (salience 4800))
(id-root ?id comb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMGI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  comb.clp 	comb2   "  ?id "  kaMGI_kara )" crlf))
)

;"comb","VT","1.kaMGI_karanA"
;Comb your hair.
;--"2.acCe_se_DUzDanA"
;They combed the area for the missing child.
;
;LEVEL 
;Headword : comb
;
;Examples --
;
;1.He needs a new comb.
;use nayI kaMGI cAhie.
;2.The cock had a colourful comb.
;isa murge ko raMgIna kalagI hE. 
;3.Don't go very close to the honeycomb.
;Cawwe ke bahuwa pAsa mawa jAo.
;4.Comb your hair.
;apane bAla ko kaMGI karo.
;5.They combed this entire area for the missing child.
;Koye hue bacce ke lie unhoMne yaha sArA kRewra CAna dAlA.
;
;uparaliKiwa vAkyoM meM azgrejI Sabxa "comb" ke jo Binna arWa A rahe hEM ve 
;vAswava meM saMbaMXiwa hEM.
; 
;vAkya 1. meM "comb" kA jo arWa A rahA hE, vaha hE "kaMGI" kA. yahI arWa vAkya 4. meM 
;kriyA ke rUpa mema A rahA hE.
;
;aba vAkya 2. meM A rahe arWa kA saMbaMXa kuCa isa prakAra samaJa sakawe hEM, ki, murge kI
;kalagI kI Akqwi, kaMGI kI xAzwexAra Akqwi se milawI hE. isake awirikwa, kaMGI kA
;sira para bAla banAne ke lie upyoga howA hE, Ora murge kI kalagI BI sira para howI hE, wo 
;"comb" kA arWa viswqwa ho rahA hE.
;
;vAkya 3. meM BI "kaMGI" kI xAzwexAra Akqwi Ora Cawwe ke BIwarI kakRoM kI Akqwi ke
;saMbaMXa se "comb" kA arWa viswqwa ho rahA hE.
;
;vAkya 5. ke saMxarBa meM "comb" kA arWa "kaMGI" ke upyoga se saMbaMXiwa hE. bAloM ko 
;sulaJAne ke lie kaMGI bAloM meM GumAwe hEM. usahI waraha, kisI samasyA ko sulaJAne ke 
;lie, kisI jagaha meM GUma kara CAna mArA jAwA hE. wo aba "comb" kA yaha arWa BI viswqwa
;hokara pAyA gayA hE.
;
;anwarnihiwa sUwra ;
;
;comb  =  kaMGI  --  kI Akqwi  --  xAzwexAra
;          |
;          |
;          v
;        bAloM meM
;          |
;          |
;          v  
;       sira para
;          |
;          |
;          v 
;    pakRIoM kI [sira kI] kalagI
;
;
; kaMGI > bAloM meM > sira_para > xAzwexAra > kalagI > kaMGI_[kI_Akqwi]
;
;"comb","N"," kaMGI_[kI_Akqwi]"
;"comb","V"," kaMGI_karanA"
;
;sUwra : kaMGI`
