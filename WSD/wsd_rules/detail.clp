;$$$ Modified by Pramila(BU) on 25-03-2014 [meaning changed from 'vyOrevAra' to 'viswqwa']
; The detailed microscopic origin of these forces is however complex and not useful for handling problems in mechanics at the 
;macroscopic scale.
;इन बलों की विस्तृत सूक्ष्म उत्पत्ति के विषय में जानकारी जटिल है तथा स्थूल स्तर पर यान्त्रिकी की समस्याओं को हल करने की दृष्टि से उपयोगी नहीं है .   ;ncert
(defrule detail0
(declare (salience 5000))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id detailed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id viswqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  detail.clp  	detail0   "  ?id "  viswqwa )" crlf))
)

;"detailed","Adj","1.vyOrevAra"
;A detailed plan was chalked out to free the captives.
;
(defrule detail1
(declare (salience 4000))
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
(declare (salience 4000))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyOrevAra_varNana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detail.clp 	detail2   "  ?id "  vyOrevAra_varNana_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 13-12-2013
;A detail was sent to clear the road after the avalanche.      ;sentence of this file
;himasKalana ke bAxa sadZaka sAPa karane ke liye eka senA kI tukadZI BejI gayI hE.
(defrule detail3
(declare (salience 4900))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id1 ?id)
(kriyA-kriyArWa_kriyA  ?id2 ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id senA_kI_tukadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detail.clp 	detail3   "  ?id "  senA_kI_tukadZI )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 13-12-2013
;Pay attention to every detail of the problem.                ;sentence of this file
;samasyA ke hara hisse para XyAna xo.<--- byore kA aMSa
;Several of the details are similar in the document.                ;sentence of this file
;xaswAvejZa meM kaI hisse eka se hEM. 
(defrule detail4
(declare (salience 5000))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(or(and(viSeRya-of_saMbanXI  ?id ?id2)(viSeRya-det_viSeRaNa  ?id ?id1))(viSeRya-of_saMbanXI  ?id1 ?id))
(id-word ?id1 several|every|each)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hissA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detail.clp 	detail4   "  ?id "  hissA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 13-12-2013
;They didn't give any details about the game. ;oald
;उन्होनें खेल के बारे में कोई जानकारी नहीं दी.
(defrule detail5
(declare (salience 4900))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(id-root-category-suffix-number ?id detail noun s p)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detail.clp 	detail5   "  ?id "  jAnakArI )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 13-12-2013
;Ram's essay contained too much detail.              ;sentence of this file
;rAma kA nibanXa meM bahuwa jZyAxA viswAra hE.
(defrule detail6
(declare (salience 4900))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 contain)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detail.clp 	detail6   "  ?id "  viswAra )" crlf))
)
;@@@ Added by Pramila(Banasthali University) on 13-12-2013
;The ambulances were detailed to the fire station              ;sentence of this file
;PAyara steSana para embulEMsa wEnAwa kI gayIM.
(defrule detail7
(declare (salience 4900))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEnAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detail.clp 	detail7   "  ?id "  wEnAwa_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 13-12-2013
;The office circular touched all details.                    ;sentence of this file
;OYPisa ke sarkulara meM hara bArIkI ko CuA gayA hE.
;He is an author with an eye for details.               ;sentence of this file
;vaha bArIkiyoM para najZara raKanevAlA leKaka hE.
(defrule detail8
(declare (salience 5000))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(or(and(viSeRya-for_saMbanXI  ?id1 ?id)(viSeRya-with_saMbanXI  ?id2 ?id1))(and(viSeRya-det_viSeRaNa  ?id ?id1)(id-word ?id1 all)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArIkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detail.clp 	detail8   "  ?id "  bArIkI )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 12-03-2014
;We shall discuss uniform circular motion in some detail.   ;ncert
;हम एकसमान वृत्तीय गति की कुछ विस्तार से चर्चा करेङ्गे ....
(defrule detail9
(declare (salience 5000))
(id-root ?id detail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detail.clp 	detail9   "  ?id "  viswAra )" crlf))
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
