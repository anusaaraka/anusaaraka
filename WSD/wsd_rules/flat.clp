
(defrule flat0
(declare (salience 5000))
(id-root ?id flat)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sapAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flat.clp 	flat0   "  ?id "  sapAta )" crlf))
)

(defrule flat1
(declare (salience 4900))
(id-root ?id flat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PlEta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flat.clp 	flat1   "  ?id "  PlEta )" crlf))
)

(defrule flat2
(declare (salience 4800))
(id-root ?id flat)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girA_xenA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flat.clp 	flat2   "  ?id "  girA_xenA )" crlf))
)

;"flat","Adv","1.girA xenA"
;Due to floods, all huts near the river were razed flat to the ground.
;--"2.sIXA raKanA"
;Keep the furniture flat against the wall.
;--"3.binA_uwAra_caDZAva_ke"
;The singer sang all songs in a flat voice.
;--"4.anumAniwa"
;I will be able to complete this work in two days flat.
;
;
;LEVEL 
;
;
;              `flat' sUwra (nibanXa)
;              ------  
;
;`flat' Sabxa ke viviXa prayoga--
;------------------------  
;
;
;"flat","Adj","1.samawala"
;This building has a flat roof.
;--"2.binA_uwAra_caDZAvavAlA"
;                 ---- < samawala
;He was speaking in a dull flat voice.
;--"3.maMxa"
;                 ---- < binA uwAra caDAvavAlA < samawala
;The share market has been flat for quite sometime.
;--"4.eka samAna"
;                 ---- < samawala
;The contractor is charging a flat rate for supply of labour.
;--"5."PIkA"
;                 ---- < binA uwAra caDAvavAlA(svAxa) < sapAta <samawala 
;The restaurant serves rather flat food.
;--"6.purAnA huA peya"
;                 ---- < PIkA < binA uwAra caDAvavAlA(svAxa) < sapAta<samawala
;This soda has become flat due to long storage.
;--"7.paMkcara huA"
;                 ---- < samAvasWA ko prApwa < samawala
;He had a flat tyre on way to office.
;--"8.KarAba honA"
;                 ---- < paMcara huA < samAvasWA ko prApwa < samawala
;His car could not start as the battery was flat.
;--"9.binA GumAva kA honA"
;                 ---- < samawala
;He could not be selected for the army as he had flat feet.
;-----------------------------------------------------
;
;sUwra : samawala[>paMkcara]
;-------------
;
;    `flat' isa Sabxa ke jiwane prayoga prayukwa hEM, una saBI meM samawA kA BAva
;sWiwa hE . samawA ke BAva kA viBinna kRewroM meM viswAra huA hE . Upara xI gaI
;tippaNiyoM se yaha spaRta hE . kuCa prayogoM kA viSleRaNa yahAz xeKawe hEM--
;
;-- manxa . Seyara mArketa ke sanxarBa meM isakA prayoga vixiwa hE . uwAra caDAva kI 
;rahiwawA ko xarSAne hewu arWAw samawA ko xiKAne ke lie isa Sabxa kA prayoga hE . 
;   isI waraha manxa-buxXi ke lie BI isako socA jA sakawA hE ki manxa-buxXivAle 
;kisI bAwa ko samaJane ke lie AvaSyaka (uwAra-caDAvavAlI) vicArakRamawA ko lie 
;nahIM rahawe hEM, arWAw sama buxXi ke howe hEM .       
;
;-- PIkA . yahAz svAxa ke sanxarBa vAlI samawA hE . PIkepana meM kisI BI prakAra kA
;rasa nahIM howA hE . jaba koI rasa howA hE wo usameM niSciwa hI rasa kA uwAra-caDAva
;howA hE . isa prakAra sama svAxavAle arWa meM `PIkA' Sabxa kA prayoga hE .
;   purAne peya meM PIkApana hone ke kAraNa usako BI isI Sabxa se aBihiwa kiyA gayA ho .
;
;-- paMkcara huA . paMkcara hone kI kriyA meM havA kA nikala jAnA howA hE . isase  
;samAvasWA howI hE . pariNAmarUpa arWa kI sAmyawA se prakqwa Sabxa saMbaxXa prawIwa howA
;hE . hinxI meM isIse havA nikala jAne kI kriyA kA BI pracalana huA lagawA hE .
;    KarAba hone ko isI paMkcara hue kI agalI kadI ke rUpa meM xeKA jA sakawA hE . 
;paMcara honA arWAw KarAba honA hI howA hE . 
;       
;
