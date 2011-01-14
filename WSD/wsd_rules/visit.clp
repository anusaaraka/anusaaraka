
; Added by human being
;Modified by Meena(5.12.09)
(defrule visit0
(declare (salience 4000))
(id-root ?id visit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 us|them|me|him|her|you)
(kriyA-object ?id ?id1)   
;(kriyA-object ?id1 ?id)  ;commented by Meena(5.12.09)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  visit.clp 	visit0   "  ?id "  mila )" crlf))
)



(defrule visit1
(declare (salience 4400))
(id-root ?id visit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mulAkAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  visit.clp 	visit1   "  ?id "  mulAkAwa )" crlf))
)




;added by Meena(5.12.09)
;My uncle's mother's cousin is visiting us .
(defrule visit2
(declare (salience 4300))
(id-root ?id visit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKane_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  visit.clp     visit2   "  ?id "  xeKane_A )" crlf))
)


;Salience reduced by Meena(5.12.09)
(defrule visit3
(declare (salience 0))
;(declare (salience 4300))
(id-root ?id visit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKane_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  visit.clp 	visit3   "  ?id "  xeKane_jA )" crlf))
)

;"visit","VT","1.xeKane_jAnA[AnA]"
;Tourists visit Taj Mahal in Agra
;
;
;LEVEL 
;Headword : visit
;
;Examples --
;
;"visit","V","1.xeKane_jAnA[AnA]"
;Children like to visit zoo.
;bacce cidiyAGara xeKanA pasanxa karawe hEM
;--"2.mulAkAwa_karanA"
;He visited his friend on sunday.
;ravivAra ko vaha apane xoswa se mulAkAwa karane gayA.
;--"3.milane_jAnA(cikiwsArWa)" <-- mulAkAwa_karane_jAnA"
;He visited the doctor yesterday
;vaha dAktara kala dOYktara ke pAsa milane gayA(cikiwsArWa).
;
;"visit","N","mulAkAwa"
;I paid a visit to my teacher  after a long time.
; kaI xinoM ke bAxa mere SikRaka se merI mulAkAwa huI.
;
;vyAKyA : uparyukwa aMkiwa Sabxa "visit" kA kriyA va saMjFA vAkyoM meM nimna  
;nABikIya BAva prakata howA hE "mulAkAwa_[karanA]".isakA sUwra nimna hE
; 
;sUwra : mulAkAwa{vyakwi_yA_sWAna_se}
