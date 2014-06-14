;Added by Amba
; A million attended.


(defrule a0
(declare (salience 3900))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) million|distinction|first|second|third|single|few|lot|hurry|little|wash)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a0   "  ?id "  - )" crlf))
)

(defrule a1
(declare (salience 3800))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) even)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a1   "  ?id "  eka )" crlf))
)

(defrule a2
(declare (salience 3700))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) called|what|many)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a2   "  ?id "  - )" crlf))
)



;Added by Meena(19.5.10)
;Typically , a doctor will see about thirty patients a day .
;The factory typically produces 500 chairs a week.
(defrule a3
(declare (salience 1000))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 day|week|month|year|century|hour|minute|second)
(viSeRya-det_viSeRaNa ?id1 ?id)
(viSeRya-det_viSeRaNa =(- ?id 1) =(- ?id 2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp         a3   "  ?id "  prawi )" crlf))
)




;Added by Meena(25.5.10)
;I went to the store , got a gallon of milk , and returned the eggs .
(defrule a4
(declare (salience 1000))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 gallon|pint|meter|foot|centimeter|millimeter)
(or(viSeRya-of_saMbanXI  ?id1 ?id2)(viSeRya-viSeRaNa ?id1 ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp         a4   "  ?id "  - )" crlf))
)



(defrule a5
(declare (salience -1000))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a5   "  ?id "  - )" crlf))
)



;Added by Meena(aug'09)
;We need a president who understands us.
(defrule a6
(declare (salience 3300))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?)
(viSeRya-det_viSeRaNa ?id1 ?id)       ;added by Meena(21.01.10)
(viSeRya-jo_samAnAXikaraNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_EsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp    a6   "  ?id "  eka_EsA )" crlf))
)





;Added by Meena(2.3.10)
;Phil gave me a sweater which he bought in Paris .
(defrule a7
(declare (salience 3300))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?)
(viSeRya-det_viSeRaNa ?id1 ?id)      
(viSeRya-jo_samAnAXikaraNa  ?id1 ?id2)
(id-root ?id1 sweater|shirt|book)   ;the list should be included in the database 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp    a7   "  ?id "  vaha )" crlf))
)




;Added by Meena(17.9.09)
;Would you like a cup of tea?
(defrule a8
(declare (salience 3300))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) cup|glass|bowl|plate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp         a8   "  ?id "  eka )" crlf))
)


;Added "right" in the list of "?id2" ;Ex.Go straight and take a right turn.(Meena 27.7.11)
;Added "welcome|music|curriculum" in the list (Meena 5.3.11)
;Modified by Meena(17.2.11) ;added "vacant" in the list for "id2":He had a vacant look/expression on his face.
;Added time in the "(not(id-root ?id1 ....... |offer|salary|time))";{Meena(8.02.10)
;I wondered for a long time why everyone liked her so much . 
;Added (not(id-root ?id1 ....... |offer|salary)(Meena (11.01.10))
;Added by Meena(13.10.09)
;One day a small opening appeared.
(defrule a9
(declare (salience 3400))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
(or(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id2)(viSeRya-viSeRaNa ?id1 ?id2)(viSeRya-wulanAwmaka_viSeRaNa ?id1 ?id2)) ;added samAsa_viSeRya-samAsa_viSeRaNa by sukhada Ex:The chief guest gave a welcome address. This has been taken into account in a10(Meena 3.3.11)  
(not (id-root ?id1 sound|shame|success|effect|idea|manner|offer|salary|time|affair)) ;added affair in the list(Meena 28.4.11)
(not(id-root ?id2 right|variable|vacant|welcome|music|curriculum|birthday))  ;Added by (Meena 24.5.10)
(not(id-cat_coarse ?id1 PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp         a9   "  ?id "  eka )" crlf))
)
;Modified by Shirisha Manju (added viSeRya-wulanAwmaka_viSeRaNa )
;Ex: John is quite certainly a better choice .



;Modified by Meena(28.4.11)
;The debate was a pretty disappointing affair. 
;Added by Meena(3.3.11)
;When we want to hear a music programme on the radio, we have to tune the radio to the correct station.
;The chief guest gave a welcome address.  
(defrule a10
(declare (salience 3300))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-det_viSeRaNa  ?id1 ?id)
(or(samAsa_viSeRya-samAsa_viSeRaNa  =(+ ?id 2) =(+ ?id 1))(viSeRya-viSeRaNa =(+ ?id 2) =(+ ?id 1)))
;(id-root  =(+ ?id 2) speech|address|programme|card)   
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp         a10   "  ?id "  - )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)24-jan-2014
;There is a temple dedicated to Shiva here.
;यहाँ पर शिव को समर्पित एक मंदिर है
(defrule a11
(declare (salience 4000))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
(kriyA-aBihiwa  ?kri ?id1)
(id-word ?kri is)
(kriyA-dummy_subject  ?kri ?id2)
(id-word ?id2 there)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp    a11   "  ?id "  eka )" crlf))
)

