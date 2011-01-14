
(defrule season0
(declare (salience 5000))
(id-root ?id season)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id seasoning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id masAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  season.clp  	season0   "  ?id "  masAlA )" crlf))
)

;"seasoning","N","1.masAlA/namaka-mirca"
;Credit of this tasty food goes to seasonings.
;
(defrule season1
(declare (salience 4900))
(id-root ?id season)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id seasoned )
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id anuBavI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  season.clp  	season1   "  ?id "  anuBavI )" crlf))
)

;"seasoned","Adv","1.anuBavI"
;He is a seasoned teacher.
;
;
(defrule season2
(declare (salience 4800))
(id-root ?id season)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id qwu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  season.clp 	season2   "  ?id "  qwu )" crlf))
)

(defrule season3
(declare (salience 4700))
(id-root ?id season)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAxiRta_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  season.clp 	season3   "  ?id "  svAxiRta_banA )" crlf))
)

;"season","V","1.svAxiRta banAnA"
;I have made this food season by using more spices.
;--"2.sIanA"
;Furniture made of oak that has been well-seasoned.
;
;LEVEL 
;Headword : season
;
;Examples --
;
;"season","N","1.qwu"
;Spring season is very delightful.
;vasanwa kA mOsama bahuwa suhAvanA howA hE.
;--"mOsama"
;Months of October && November used to be the cricketing season in the Northern India.
;hinxuswAna ke uwwarI BAgoM meM aktUbara Ora navambara ke mahIne kriketa Kelane kA mOsama huA karawe We.
;
;"season","V","1.COMkanA"
;She seasoned the curry with aromatic spices.
;usane Sorabe ko KuSabUxAra masAloM se COMkA.
;--"2.sIJanA"
;The house was decorated with furniture made of oak that has been well-seasoned.
;Gara acCI waraha se sIJe hue oka ke ParnIcara se sajA huA WA.
;
;
;'season' Sabxa kA anwarnihiwa sUwra
;
;                     qwu (saMjFA)  
;                      |
;                      |
;                     Qwu (kriyA)
;                      |
;               -----------------
;              |                 |
;     Qwu sahane yogya banAnA      qwu anusAra banAnA
;              |                 |
;            siJAnA              COMkanA
;          {pakkA banAnA}
;
;yAni bIjArWa wo 'qwu' hI hE Ora qwu ke kisa pakRa ko lekara kriyA prayoga kiyA bAkI arWa usa para nirBara hEM. awaH
;
;sUwra  : qwu`   
