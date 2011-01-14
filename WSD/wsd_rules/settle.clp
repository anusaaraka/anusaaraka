
(defrule settle0
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id settled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id basA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  settle.clp  	settle0   "  ?id "  basA_huA )" crlf))
)

;"settled","Adj","1.basA huA"
;He is leading a settled family life.
;--"2.SAnwa"
;You'll feel more settled when you've been here a few weeks.
;
(defrule settle1
(declare (salience 4900))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle1   "  ?id "  beMca )" crlf))
)

;"settle","N","1.beMca"
;The settles are mainly used by old people for more comfort && support.
;
(defrule settle2
(declare (salience 4800))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id basA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle2   "  ?id "  basA )" crlf))
)

(defrule settle3
(declare (salience 4700))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id basa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle3   "  ?id "  basa )" crlf))
)

;"settle","V","1.basanA[basAnA]"
;We are going to settle in Taiwan.
;--"2.samaJOwA_kara_lenA"
;Both of them agreed to settle out of court.
;--"3.bETa_jAnA"
;The bird settled on a very small branch. 
;--"4.nirNaya_karanA"
;Everything is settled, I am joining the company next Wednesday.
;--"5.SAnwa_ho_jAnA"
;We were dead tired && the baby would not settle.
;--"6.cukAnA"
;We'll settle the bill later.
;--"7.XIre_XIre_nIce_bETanA"
;Stir the tea to settle the leaves.
;
;LEVEL 
;Headword : settle
;
;Examples --
;
;"settle","V","1.basanA[basAnA]"
;We are going to settle in Taiwan.
;hama loga wAivAna meM basane jA rahe hEM.
;--"2.samaJOwA kara lenA"
;Both of them agreed to settle out of court.
;xono hI kacaharI jAe binA samaJOwA karane ke liye rAjZI ho gaye hEM
;--"3.bETa jAnA"
;The bird settled on a very small branch.
;vaha cidZiyA eka bahuwa CotI sI dAlI para bETa gayI 
;--"4.TIka_TAka_ho_jAnA"
;Everything is settled, I am joining the company next Wednesday.
;saba TIka TAKa ho gayA hE, mEM agale buXavAra ko vaha kampanI jvAina kara rahI hUz.
;--"5.SAnwa ho jAnA"
;We were dead tired && the baby would not settle.
;hama bahuwa Wake We Ora baccA SAnwa nahIM ho rahA WA.
;--"6.cukAnA"
;We can settle up the bill later.
;hama bila bAxa meM cukAezge.
;--"7.nIce_bETa_jAnA"
;Stir the tea to settle the leaves.
;cAya meM cammaca calAo jisase pawwiyAz nIce bETa jAez.
;
;"settle","N","1.beMca"
;The settles are mainly used by old people for more comfort && support.
;prAyaH vqxXa loga sahAre Ora ArAma ke liye ina beMcoM kA iswamAla karawe hEM.
;
;
;
;'settle' Sabxa Old English 'setel' Sabxa kA bAxa kA rUpa hE. 'setel' Sabxa kA
;arWa hE 'seat' - yAni eka prakAra kA Asana{bETane kA sWAna}. AKirI uxAharaNa meM
;yaha spaRta xiKawA hE. jEsA ki aMgrejZI kI prakqwi hE, isameM koI BI saMjFA
;Sabxa kriyA rUpa meM prayoga ho sakawA hE - (EsA hone para samBAvanA yaha BI
;rahawI hE ki kriyA rUpa meM prayoga hone para usake arWa meM mUla saMjFA Sabxa
;ke arWa se kuCa BinnawA BI A jAe), yahAz BI 'settle' apane saMjFA ke prayoga
;se kriyA rUpa meM prayoga hone lagA Ora isakA kriyA prayoga aXika vyApaka
;ho gayA. isakA arWa viswAra krama kuCa isa prakAra se lagawA hE
;
;anwarnihiwa sUwra ;
;
;                       bEMca----bETanA 
;                      (saMjFA)  (kriyA)
;                                  |
;                                sWira ho jAnA
;                                 |
;           --------------------------------------------
;          |                     |                      |         
;    carcA-vivAxa_kI_asWirawA    caMcalawA{SiSu_kI}         halacala{SArIrika}    
;          |                      |                      |
;         samaJOwA                 SAMwa_honA             bETanA,basanA iwyAxi
;
;
;sUwra : SAMwa_honA^bETanA`
