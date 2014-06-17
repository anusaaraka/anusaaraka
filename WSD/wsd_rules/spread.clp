;@@@ Added by jagriti(31.12.2013)
;In the evening, as the sun was setting, he picked the finest buds, and the Queen's maids [spread] them thickly on the royal bed.
;शाम को जब सूरज डूबने लगा तो उसने सब सुन्दर-सुन्दर कलियॉँ चुन लीं और रानी की बांदियों ने उन्हें रानी के बिस्तर पर बिछा दिया। 
(defrule spread0
(declare (salience 5000))
(id-root ?id spread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI ?id ?id1)
(id-root ?id1 bed|cot|table)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spread.clp 	spread0   "  ?id "  biCA )" crlf))
)
;@@@ Added by jagriti(3.4.2014)
;To spread butter on a slice of bread.[rajpal]
;ब्रेड के टुकडे पर मक्खन लगाना . 
(defrule spread3
(declare (salience 4900))
(id-root ?id spread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 bread|butter|jam)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spread.clp 	spread3   "  ?id "  lagA )" crlf))
)
;@@@ Added by jagriti(3.4.2014)
;The spread of information.[rajpal]
;सूचना का प्रसारण . 
(defrule spread4
(declare (salience 4800))
(id-root ?id spread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 information)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spread.clp 	spread4   "  ?id "  prasAraNa )" crlf))
)
;@@@ Added by jagriti(3.4.2014)
;The spread of civilization.[rajpal]
;सभ्यता का प्रचार.
(defrule spread5
(declare (salience 4700))
(id-root ?id spread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 civilization)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spread.clp 	spread5   "  ?id "  pracAra )" crlf))
)

;.......Default rule....
(defrule spread1
(declare (salience 1))
(id-root ?id spread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spread.clp 	spread1   "  ?id "  PElAva )" crlf))
)




;Meaning changed from PElA  to PEla_jA by Meena(19.10.09)
;Fanned by a strong wind, the fire spread rapidly through the city.
(defrule spread2
(declare (salience 1))
(id-root ?id spread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spread.clp 	spread2   "  ?id "  PEla_jA )" crlf))
)





;"spread","V","1.PElAnA"
;Spead Jam on the bread && then eat.
;
;
