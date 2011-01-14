
(defrule slip0
(declare (salience 5000))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id slipa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slip.clp 	slip0   "  ?id "  slipa )" crlf))
)

;"slip","N","1.slipa"
(defrule slip1
(declare (salience 4900))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_Pisala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slip.clp	slip1  "  ?id "  " ?id1 "  pICe_Pisala  )" crlf))
)

(defrule slip2
(declare (salience 4800))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pisala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slip.clp 	slip2   "  ?id "  Pisala )" crlf))
)

;"slip","V","1.Pisala"
;--"2.PZisalanA"
;The climber's foot slipped && he fell.
;--"3.sarakanA"
;The earth quakes are caused when the earth plates slip over on another.
;--"4.BUlanA"
;It had slipped my memory that you were arriving today.
;--"5.sWAnaBraMSa_honA"
;He is coming IInd from last 2 years. He seems to be slipping from his position.
;--"6.corI_se_raKanA"
;My brother slipped some money in my pocket while my father didn't allow it.
;
;LEVEL 
;
;
;"slip"
;
;eka anya prayAsa 'slip' Sabxa ko lekara:-
;
;Walk carefully lest your foot should slip.
;sAvaXAnI se calanA kahIM wumhArA pAzva nA Pisala jAe
;
;He was walking in a rush && slipped on the ice. 
;vaha jalxI meM cala rahA Ora usakA pAzva barPa para Pisala gayA.
;
;The books slipped out of my hands.
;kiwAbeM mere hAWa se Pisala gayIM  
;
;Your request slipped his attention.
;ApakA anuroXa usake XyAna se Pisala gayA
;
;Upara ke vAkyoM meM "slip" Sabxa ke lie "PisalanA" arWa uciwa ho sakawA
; hE :
;
;"slip","V","1.PisalanA"
;*  to slide; to glide.
;
;kinwu kaI sanxarBoM meM "slip" kA arWa "PisalanA" uciwa nahIM howA hE,Ora Ese
;vAkyoM ke sanxarBa meM "slip" Sabxa ke lie "KisakanA" EsA arWa xiyA jA sakawA
;hE, jEse :
; 
;Examples:
;
;Mohan tried to slip the money into Ami's bag.
;mohanane amI ke WEle meM pEse KisakAne kI koSiSa kI
;
;Some errors slipped into the work.
;kAma meM kuCa galawiyAz Kisaka AI
;
;She slipped out of the room unnoticed.
;vaha axqRta waraha se kamare meM se Kisaka AI
;
;Upara ke vAkyoM ke sanxarBa meM "slip" Sabxa ke lie "KisakanA" arWa uciwa hE 
;
;"slip","V","2.KisakA"
;*  To depart, withdraw, enter, appear, intrude, or escape.
;
;
;hamane kuCa sanxarBoM meM (vAkya 1-4) "slip" Sabxa ke lae `PisalanA' kriyA 
;kA prayoga kiyA hE . xUsare sanxarBavAle vAkyoM (5-7) meM `KisakanA' 
;kriyA kA prayoga kiyA hE. lekina ina xonoM arWoM ke sWAna meM hama eka 
;Sabxa raKa sakawe hEM :"saraka", jo saBI sanxarBoM meM ina xonoM kriyAoM ke arWa
;ko banAe raKawA hE.
;
;
;   ApakA anuroXa usake XyAna se saraka gayA
;   mohanane amI ke WEle meM pEse sarakAne kI koSiSa kI
;   kAma meM kuCa galawiyAz saraka AI
;   vaha axqRta waraha se kamare meM se saraka AI
; 
;awaH 'saraka' 'slip' ke liye acCA paryAya hE.
;kinwu
;
;      He slipped on the ice
;???   vaha baraPa para saraka gayA 
;
;awaH mAwra 'saraka' raKane se kahIM kahIM samasyA ho sakawI hE. isaliye 'slip'
;ke arWa ko sUwra rUpa meM Ese aBivyakwa kiyA jA sakawA hE:-
; 
;anwarnihiwa sUwra ;
;saraka - apanI jagaha se hatanA - KisakanA (prayAsa sahiwa)- PisalanA (anAyAsa)
;slip money into the pocket...slipped from the room..slipped on the ice
;
;sUwra : Pisala[<saraka]
;
;isa sUwra meM mUla 'saraka' se 'Pisala' waka jAne kA krama hE.
;
;
;
;
