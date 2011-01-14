
(defrule crown0
(declare (salience 5000))
(id-root ?id crown)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id crowning )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samApana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  crown.clp  	crown0   "  ?id "  samApana )" crlf))
)

;"crowning","Adj","1.samApana"
;The performance provided the crowning touch to the entertainments
;
(defrule crown1
(declare (salience 4900))
(id-root ?id crown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjamukuta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crown.clp 	crown1   "  ?id "  rAjamukuta )" crlf))
)

;"crown","N","1.rAjamukuta"
;The crown of king Chamarajaudayar is kept in the Mysore museum
;--"2.mukuta"
;Aishwarya Rai got the crown in the beauty contest
;--"3.SiKara"
;Poet Kalidasa gives a vivid description of the crown of Himalayas
;
(defrule crown2
(declare (salience 4800))
(id-root ?id crown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjyABiReka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crown.clp 	crown2   "  ?id "  rAjyABiReka_kara )" crlf))
)

;"crown","VT","1.rAjyABiReka_karanA"
;Queen Elizabeth was crowned when George V died
;--"2.sammAniwa_karanA"
;Kasturirangan was crowned with Padma Vibhushan for his contribution in the
;field of space technology
;--"3.SiKara_para_honA"
;Mountaineer Bachendra Pal crowned the Himalayas with Indian flag
;--"4.xAzwa_para_Kola_caDAnA"
;The dentist put a crown on his wisdom tooth
;
;LEVEL 
;Headword : crown
;
;Examples --
;
;1. The crown of Emperor Akbar is kept in a museum at  Delhi.
;SAhaMSAha akabara kA wAja xillI ke eka saMgrahAlaya meM raKA gayA hE.
;2. His hair is quite thin on the crown.
;SIrRa ke BAga meM usake bAla bahuwa pawale hEM.
;3. Poet Kalidasa gives a vivid description of the crown of Himalayas.
;kavi kAlixAsa himAlaya ke SIrRa kA camakIlA varNana xewA hE.
;4. The dentist put a crown on his wisdom tooth
;xAzwa ke dAktara ne usakI akala kI xADZa para sirA lagAyA.
;5. Shahjahan was crowned when Akbar died.
;akabara kI mOwa para SAhajahAna ko wAja pahanAyA gayA WA.
;
;
;uparaliKiwa vAkyoM meM "crown" ke Binna laganevAle arWoM meM saMbaMXa vAkya 1. ke arWa
; "wAja" ke xvArA, pAyA jA sakawA hE.
;
;vAkya 1. meM "crown" kA arWa "wAja/mukuta" EsA A rahA hE.
;
;kyoMki wAja ko SIRa para pahanA jAwA hE wo vAkya 2. meM "crown" kA arWa "SIrRa kA BAga" EsA A rahA hE.
;
;yahI arWa vAkya 3. Ora vAkya 4. meM BI A rahA hE. vAkya 3. meM himAlaya parvawa ke 
;SIrRa BAga kI bAwa ho rahI hE. vAkya 4. meM akala kI xADZa para sirA lagAne kI bAwa hE,
;wo jEse mukuta sira para [jo ki SarIra kA SIrRa BAga he] pahanAyA jAwA hE. TIka vEse hI 
;sirA BI mukuta kI waraha xAzwa ke SIrRa BAga para pahanAyA jAwA hE. 
;
;vAkya 5. meM mukuta/wAja pahanAne kI kriyA ko varNiwa karawA hE.
;
;anwarnihiwa sUwra ;
;
; wAja - jahAz wAja pahanA jAwA hE > SIrRa BAga
;  |
;  |--wAja_pahanAnA-rAjyABiSeka karanA
;
;sUwra : SIrRa_BAga
;
;"crown","N","SIrRa_BAga"
;"crown","V","rAjyABiReka_karanA"
