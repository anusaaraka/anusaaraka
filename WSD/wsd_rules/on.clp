
;Added by sheetal(23-03-10)
;He is apparently an expert on dogs .
(defrule on01
(declare (salience 5000))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) expert)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp        on01   "  ?id "  kA )" crlf))
)


;(defrule on0
;(declare (salience 4999))
;(id-root ?id on)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse =(- ?id 1) noun)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id para))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on0   "  ?id "  para )" crlf))
;)

(defrule on1
(declare (salience 4900))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) charge|attack|complaint|cost|electric charge|care|guardianship|rush|thrill|excitement|emotion|feeling|billing|asking|accusation|explosive charge)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on1   "  ?id "  meM )" crlf))
)

(defrule on2
(declare (salience 4800))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) panel|commiittee)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on2   "  ?id "  para )" crlf))
)


;Modified by Aditya and Hardik(5.7.13),IIT(BHU) (Added month names and number category)
;I completed my college on 23rd july 2013.
;Modified by Meena(21.7.11)
;The Dow fell 22.6% on Black Monday.
(defrule on3
(declare (salience 4700))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-on_saMbanXI ?kri ?id1)(viSeRya-on_saMbanXI  ?viSeRya  ?id1))
;(id-root  ?id1 Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday)
(or (id-root  ?id1 sunday|monday|tuesday|wednesday|thursday|friday|saturday|january|february|march|april|may|june|july|august|september|october|november|december)(id-cat_coarse ?id1 number));Modified to lowcase by Roja(13-06-13). As now we are using NER to get PropN info , NER doesnt recognize weekdays as Named Entities. So changed to lowcase. Ex:They are playing an important match against Liverpool on Saturday. 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on3   "  ?id "  ko )" crlf))
)

(defrule on4
(declare (salience 4600))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) cash|money|gun|drugs)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on4   "  ?id "  ke_pAsa )" crlf))
)

(defrule on5
(declare (salience 4500))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagAwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on5   "  ?id "  lagAwAra )" crlf))
)

;"on","Adv","1.lagAwAra"
;She talked on for two hours without stopping.




;Added by Meena(7.3.11)
;Golconda fort is situated on the western outskirts of Hyderabad.
;The big question on everybody's mind is who killed OJ.{ "The big question on my mind is who killed OJ." for openlogos as it takes the wrong relation (viSeRya-on_saMbanXI question everybody's) }
(defrule on6
(declare (salience 4400))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(or(and(kriyA-on_saMbanXI =(- ?id 1) ?id1)
   (id-word ?id1 outskirts))
   (and(viSeRya-on_saMbanXI  =(- ?id 1) ?id1)
       (id-word ?id1 mind))
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp        on6   "  ?id "  meM )" crlf))
)



;Salience reduced by Meena(7.3.11)
(defrule on7
(declare (salience 0))
;(declare (salience 4400))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on7   "  ?id "  para )" crlf))
)


;$$$ Modified by Sonam Gupta MTech IT Banasthali 11-3-2014 (silence reduced)
;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Grandpa cooked their meal on the stove and the three of them sat down to eat. [Gyannidhi]
;दादा जी ने स्टोव पर भोजन पकाया और तीनों ने साथ बैठकर खाया. 
(defrule on8
(declare (salience 4350))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(kriyA-on_saMbanXI  ? ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on8   "  ?id "  para )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;From then on the plan they had formulated was carried out with smooth precision.  [Gyannidhi]
;तब से उन्होंने जो योजना बनाई थी वह बिना किसी बाधा के बहुत जल्द कामयाब हुई।
(defrule on9
(declare (salience 4850))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(viSeRya-on_saMbanXI  ?id1 ?)
(id-root ?id1 then)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 waba_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " on.clp  on9  "  ?id "  " ?id1 "  waba_se )" crlf))
)

;@@@ Added by Preeti(9-5-14)
;He is cheating on his wife. [Oxford Advanced Learner's Dictionary]
;vaha apanI pawnI ke alAvA nAjAyaja_saMbaMXa_raKa rahA hE.
(defrule on10
(declare (salience 4350))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
;(kriyA-on_saMbanXI   =(- ?id 1) ?)
(id-root =(- ?id 1) cheat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  ke_alAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " on.clp  on10  "  ?id "  ke_alAvA )" crlf))
)



;"on","Prep","1.para"
;The book is on the table.
;
