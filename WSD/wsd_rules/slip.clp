

(defrule slip1
(declare (salience 5000))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_Pisala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slip.clp	slip1  "  ?id "  " ?id1 "  pICe_Pisala  )" crlf))
)
;@@@ Added by jagriti(15.1.2014)
;The earth quakes are caused when the earth plates slip over on another.
;भूकंप पैदा होता है जब पृथ्वी की प्लेटों एक दूसरे पर सरकती हैं.
(defrule slip2
(declare (salience 4900))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 over)
(kriyA-upasarga ?id ?id1)
;(kriyA-on_saMbanXI ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slip.clp	slip2  "  ?id "  " ?id1 "  saraka  )" crlf))
)
;@@@ Added by jagriti(15.1.2014)
;The words slipped out from her mouth.
;शब्द उसके मुंह से निकल गया.
(defrule slip3
(declare (salience 4800))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slip.clp	slip3  "  ?id "  " ?id1 "  nikala_jA  )" crlf))
)
;@@@ Added by jagriti(15.1.2014)
;Your request completely slipped from my attention.
;आपका अनुरोध पूरी तरह से मेरे ध्यान से निकल गया. 
(defrule slip4
(declare (salience 4700))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 memory|mind|lip|mouth|attention)
(kriyA-from_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slip.clp 	slip4   "  ?id "  nikala_jA  )" crlf))
)
;@@@ Added by jagriti(15.1.2014)
;He slipped the shirt over his head .
;उसने अपने सिर पर शर्ट डाल ली.
(defrule slip5
(declare (salience 4600))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 over)
(kriyA-over_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slip.clp	  slip5  "  ?id "  " ?id1 "  dAla  )" crlf))
)
;@@@ Added by jagriti(15.3.2014)
;He has slipped in my estimation.[rajpal] 
;वह मेरी नजरों में गिर गया है . 
(defrule slip6
(declare (salience 4500))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI ?id ?id1)
(id-root ?id1 estimation)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slip.clp 	slip6   "  ?id "  gira_jA )" crlf))
)
;@@@ Added by jagriti(15.3.2014)
;He slipped into enemy's army.[rajpal]
;वह शत्रु की सेना के अंदर चुपके से घुस आया . 
(defrule slip7
(declare (salience 4400))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cupake_se_Gusa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slip.clp 	slip7   "  ?id "  cupake_se_Gusa_A )" crlf))
)
;@@@ Added by jagriti(18.3.2014)
;He had to slip off his cloths.[rajpal]
;उसको अपने कपडे जल्डी से उतारने पडे . 
(defrule slip8
(declare (salience 4300))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?id2)
(id-cat_coarse ?id verb)
(id-root ?id2 cloth)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jaldI_se_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slip.clp	slip8  "  ?id "  " ?id1 "  jaldI_se_uwAra  )" crlf))
)
;@@@ Added by jagriti(18.3.2014)
;He slipped off from the meeting.[rajpal] 
;वह बैठक से चुपके से निकल गया . 
(defrule slip9
(declare (salience 4200))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-from_saMbanXI ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cupake_se_nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slip.clp	slip9  "  ?id "  " ?id1 "  cupake_se_nikala_jA  )" crlf))
)
;@@@ Added by jagriti(19.3.2014)
;After the elections he slipped over his fellows.[rajpal]
;चुनाव के बाद उसने उसके साथियों को छोड् दिया . 
(defrule slip10
(declare (salience 4100))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(kriyA-over_saMbanXI ?id ?id1)
(id-root =(+ ?id 1) over)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) CodZ_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slip.clp	slip10  "  ?id "  " (+ ?id 1) "  CodZ_xe  )" crlf))
)
;@@@ Added by jagriti(19.3.2014)
;He has let slip everything to him.[rajpal]
;उसने उसको अनजाने में सब कुछ बता दिया . 
(defrule slip11
(declare (salience 4000))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) let)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) anajAne_meM_bawA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slip.clp	slip11  "  ?id "  " (- ?id 1) "  anajAne_meM_bawA_xe  )" crlf))
)
;@@@ Added by jagriti(19.3.2014)
;There were a few slips in the translation.[oald]
;अनुवाद में कुछ गलतियाँ थीं .  
(defrule slip12
(declare (salience 3900))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-in_saMbanXI ?id ?id1)(viSeRya-of_saMbanXI ?id ?id1))
(id-root ?id1 translation|writing)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slip.clp 	slip12   "  ?id "  galawI)" crlf))
)
;@@@ Added by jagriti(19.3.2014)
;I wrote it down on a slip of paper.[oald]
;मैंने कागज की पर्ची पर यह लिखा . 
(defrule slip13
(declare (salience 3800))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 withdraw|deposit|fees|paper)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parcI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slip.clp 	slip13   "  ?id "  parcI)" crlf))
)
;@@@ Added by jagriti(19.3.2014)
;She was wearing a nylon slip.[rajpal]
;वह एक नायलन का पेटीकोट पहन रही थी . 
(defrule slip14
(declare (salience 3800))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id1 ?id)
(id-root ?id1 wear)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id petIkota))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slip.clp 	slip14   "  ?id "  petIkota)" crlf))
)

;.....Default rule..........
;$$$ modified by jagriti(19.3.2014)..default meaning changed from slip to Pisala
;His sprain was the result of a slip.[rajpal]
;उसकी मोच फिसल जाने के कारण हुई . 
(defrule slip_noun
(declare (salience 100))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pisala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slip.clp 	slip_noun   "  ?id "  Pisala )" crlf))
)
;"slip","N","1.slipa"

(defrule slip_verb
(declare (salience 100))
(id-root ?id slip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pisala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slip.clp 	slip_verb   "  ?id "  Pisala )" crlf))
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
