
(defrule hot0
(declare (salience 5000))
(id-root ?id hot)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hot.clp 	hot0   "  ?id "  garama )" crlf))
)

(defrule hot1
(declare (salience 4900))
(id-root ?id hot)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hot.clp 	hot1   "  ?id "  garama )" crlf))
)

;"hot","Adj","1.garama"
;Aja kA xina sabase'hot'(garama) xina WA.
;
;
;LEVEL 
;Headword : hot
;
;Examples --
;
;--"1.garama"
;I like to drink my coffee hot.
;mEM kOYPI garama pInA pasanxa karawA hUz.
;Its a hot day today.
;Aja xina kAPI garama hE.
;A hot discussion on the problem of terrorism was telecast last evening.
;kala SAma AwaMka kI samasyA para eka garamA-garama bahasa telIkAsta huI.
;Temperamentally she is very hot.
;vaha bahuwa garama ximAga kI hE.
;--"2.garamI"
;Aja kAPI garamI hE.
;How hot is it in Bombay at this time of the year.
;ina xinoM bambaI meM kiwanI garamI howI hE ?
;Its hot in this room.
;isa kamare meM garamI hE.
;--"3.aMgAramaya"
;Rita is making life hot for Ramesh.
;rIwA rameSa kI jZinxagI aMgAramaya kara rahI hE.
;--"4.lAla"
;Rita's cheeks were hot with embarrasement.
;rIwA ke gAla Sarma se lAla ho gaye.
;--"5.wIKA{mirca-masAlexAra}"
;She likes hot curries.
;use wIKA{mirca-masAlexAra} sabjZiyAz pasanxa hEM.
;--"6.wejZa"
;She finds the pace of life in the metropolitan too hot.
;use mahAnagara meM jZinxagI kI raPwAra bahuwa wejZa lagawI hE. 
;She is good in languages but not so hot in physics.
;vaha BARAoM meM wo acCI hE para BOwikaSAswra meM uwanI wejZa nahIM hE.
;--"7.uwwejaka"
;The film had a number of hot scenes.
;Pilma meM kaI uwwejaka xqSya We.
;
;anwarnihiwa sUwra ;
;
;                        garama 
;                         |
;                         |
;                        garamI {guNa}---(garamI_pExA_karanevAlA)--uwwejaka
;                         |
;                         | 
;                        aMgAramaya
;                          |
;                     |----|------|
;                     |           |
;                    wejZa        lAla 
;                     |
;                    wIKA
;
;sUwra : garama[>wIKA]
