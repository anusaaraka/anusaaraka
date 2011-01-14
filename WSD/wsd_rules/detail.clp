
(defrule detail0
(declare (salience 5000))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id detailed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vyOrevAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  detail.clp  	detail0   "  ?id "  vyOrevAra )" crlf))
)

;"detailed","Adj","1.vyOrevAra"
;A detailed plan was chalked out to free the captives.
;
(defrule detail1
(declare (salience 4900))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id byOrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detail.clp 	detail1   "  ?id "  byOrA )" crlf))
)

;"detail","N","1.byOrA"
;--"2.vyOrA"
;Several of the details are similar in the document.
;The office circular touched all details
;Ram's essay contained too much detail
;--"3.senA_kI_tukadZI"
;A detail was sent to remove the fallen trees
;
(defrule detail2
(declare (salience 4800))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyOrevAra_varNana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detail.clp 	detail2   "  ?id "  vyOrevAra_varNana_kara )" crlf))
)

;"detail","VT","1.vyOrevAra_varNana_karanA"
;The brochure details all the operations of the machine.
;He detailed the soldiers about their duties.
;--"2.wEnAwa_karanA"
;The ambulances were detailed to the fire station
;
;LEVEL 
;Headword : detail
;
;Examples --
;
;"detail","N","1.byorA"
;Give details of the project.
;prOYjekta kA byOrA xIjiye. <---viRaya kI hara bAwa kA saviswAra varNana
;--"2.hissA"
;Pay attention to every detail of the problem.
;samasyA ke hara hisse para XyAna xo.<--- byore kA aMSa
;Several of the details are similar in the document.
;xaswAvejZa meM kaI hisse eka se hEM. 
;The office circular touched all details.
;OYPisa ke sarkulara meM hara bArIkI ko CuA gayA hE.
;--"3.bArIkI"
;He is an author with an eye for details.
;vaha bArIkiyoM para najZara raKanevAlA leKaka hE. <--byore ke hara hisse kI sUkRamawA
;--"4.viswAra"
;Ram's essay contained too much detail.
;rAma kA nibanXa bahuwa jZyAxA viswAra se hE.<-- byorA
;--"5.senA_kI_tukadZI"
;A detail was sent to clear the road after the avalanche.
;himasKalana ke bAxa sadZaka sAPa karane ke liye eka senA kI tukadZI BejI gayI hE.
;<--hissA <---aMSa
;
;"detail","VT","1.vyOrevAra_varNana_karanA"
;The brochure details all the operations of the machine.
;maSIna kI saBI kriyAoM kA broSara byOrevAra varNana karanawA hE.
;He detailed the soldiers about their duties.
;usane sEnikoM ko unake karwavyoM kA byOrA xiyA.
;--"2.wEnAwa_karanA"
;The ambulances were detailed to the fire station
;PAyara steSana para embulEMsa wEnAwa kI gayIM. <--karwavyoM kA byorA xekara BejanA
;
;
;anwarnihawa sUwra ;
;
;viRaya kA hara hissA -- byorA-byorevAra varNana-viswqwa varNana--karwavyoM kA byorA xenA  |        
; |           |                                           
; |           |                  
; |    |------|---------|
; |    |                |
; |   hisse kI bArIkI  tukadZA
; | 
;byorA xekara BejanA-wEnAwa_karanA
;
;  
;sUwra : viswqwa^byorA[>wEnAwa_karanA]
