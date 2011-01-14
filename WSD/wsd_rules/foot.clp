;Modified by Meena(14.9.09); added(viSeRya-saMKyA_viSeRaNa ..) and commented (id-cat_coarse ..)
;He was about six feet tall.
;It is 800 feet above the sea level.
;It is about eight hundred feet above the sea level.
(defrule foot0
(declare (salience 5000))
(id-root ?id foot)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-saMKyA_viSeRaNa  ?id ?id1)(viSeRya-det_viSeRaNa ?id ?id1))
;(id-cat_coarse =(- ?id 1) cardinal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foot.clp 	foot0   "  ?id "  PUta )" crlf))
)



(defrule foot1
(declare (salience 4900))
(id-root ?id foot)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id footing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWiwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  foot.clp  	foot1   "  ?id "  sWiwi )" crlf))
)

;given_word=footing && word_category=noun	$AXAra)

;"footing","N","1.AXAra"
;His company is now on a firm footing in the market.
;--"2.saMwulana"
;She lost her footing in the slippery bathroom && fell down.
;--"3.paxavI"
;The workers wanted to be on equal footing with their officers.
;
(defrule foot2
(declare (salience 5000))
(id-root ?id foot)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id1 ?id)
(viSeRya-det_viSeRaNa  ?id  ?id2)
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAzva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foot.clp 	foot2   "  ?id "  pAzva )" crlf))
)

;LEVEL 
;Headword : foot
;
;Examples --
;"foot","N","1.pEra/pAzva"
;He kicked the ball with his foot. 
;usane apane pEra se bAla ko Tokara mArI.
;--"2.nicalA BAga"  <---pAxa
;You must give references on the foot of a page.
;wuma peja ke nicale BAga meM saMxarBa (sUcI) avaSya xo. 
;--"3.pAxa tippaNI"
;A foot note is given at the end of a page.
;pqRTa ke aMwa meM pAxa tippadZI xI gayI hE.
;--"4.pahAdZa kI walahatI"-pahAdZa kA nicalA BAga yA pAxa
;We camped at the foot of the hill.
;hamane pahAdZa kI walahatI meM kEmpa lagAyA
;--"5.Puta{mApa}"
;This wall is 12feet high.
;yaha xIvAra bAraha Puta UzcI hE.
;
;"on foot","pExala"
;Some people came on foot,others came by car.
;kuCa loga pExala Ae Ora kuCa kAra se.
;
;vyAKyA --
;ukwa uxaHraNoM meM 1 se 4 waka paraspara sambanXiwa lagawe hEM. 'foot' kA mUla arWa 'pAzva' hE. isase viswAra hokara isameM anya arWa 'nicalA_BAga' A gayA. uxAharaNa 5 meM AnevAlA
;arWa inase asambaxXa lagawA hE. ho sakawA hE ki jaba waka nApane ke anya sAXana nahIM Ae We, 
;'pAzva' nApane kA eka sAXana rahA ho Ora isIliye 'foot' kA isa arWa meM prayoga hone lagA ho. paranwu kyoMki aba inameM sIXA sambanXa nahIM xiKawA hE isaliye inako alaga alaga mAna
;lenA hI uciwa hogA. 
;
;anwarnihiwa sUwra ; 
;
; pAzva --SarIra kA nicalA BAga --kisI BI vaswu kA nicalA BAga --pAxa, walahatI  
;He hurt his foot ....                               ...footnote, foot of the hill
;
;
;sUwra : pAzva`/Puta  
;
;
;
;
