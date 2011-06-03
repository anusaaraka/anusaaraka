
(defrule at0
(declare (salience 5000))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) end)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at0   "  ?id "  meM )" crlf))
)




;Modified by Meena(18.5.11)
;When my name was called, he looked across at me. 
(defrule at1
(declare (salience 4900))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 look)
(kriyA-at_saMbanXI  ?id1  ?id2)
(id-root  ?id2  me|us|you|her|him|them)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at1   "  ?id "  kI_ora )" crlf))
)




(defrule at2
(declare (salience 4800))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) annoy)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at2   "  ?id "  se )" crlf))
)

;Order is important. Do not change the order between above rule && the rule below.
(defrule at3
(declare (salience 4700))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at3   "  ?id "  para )" crlf))
)

;At the time of evolution.
(defrule at4
(declare (salience 4600))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) night|evening|morning|afternoon)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at4   "  ?id "  meM )" crlf))
)

(defrule at5
(declare (salience 4500))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) action|act|human action|human activity|activity|military action|group action|natural action|action mechanism|legal action|action at law)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at5   "  ?id "  para )" crlf))
)

(defrule at6
(declare (salience 4400))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) activity|human activity)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at6   "  ?id "  meM )" crlf))
)

(defrule at7
(declare (salience 4300))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) enclosed)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at7   "  ?id "  meM )" crlf))
)

(defrule at8
(declare (salience 4200))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) place|topographic point|point|spot|location|geographical area|geographic area|geographical region|region|vicinity|locality|neighborhood|neck of the woods|area|country|office|home|residence|geographic point|geographical point|station|plaza|piazza|public square|square|piece of land|piece of ground|parcel of land|blank space|surface area|expanse)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at8   "  ?id "  meM )" crlf))
)



(defrule at9
(declare (salience 4100))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(or (id-word =(+ ?id 1) time|time period|period of time|period|moment|minute|second|instant|point in time|clock time|hour)
(id-root =(- ?id 1) look));Added by sheetal (2-01-10) ;He is always looking at himself in the mirror .
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at9   "  ?id "  ko )" crlf))
)


;Added by Meena(1.4.11)
;We were bunched up at the back of the room. 
(defrule at_the_back
(declare (salience 4000))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id1 ?id2)
(id-root ?id2 back)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp        at_the_back   "  ?id "  - )" crlf))
)



;Modified by Meena(1.4.11);added "back" in the list; Ex: "We were bunched up at the back of the room."
;Modified by Meena(24.10.09)
;Guess who I saw at the party last night ! 
(defrule at10
(declare (salience 4000))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id1 ?id2)
(not(id-root ?id2 death|back))
;(id-word =(+ ?id 1) conference|meeting|discussion|party)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at10   "  ?id "  meM )" crlf))
)



;Modified by Meena(20.5.11)
;The Dow Jones industrials closed at 2569.26. 
;Added by Meena(24.10.09)
; I yelled at her for going to the party .
;The fact that he smiled at me gives me hope .
(defrule at11
(declare (salience 4000))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id1 ?id2)
(or(id-root ?id2  me|us|you|her|him|them)(id-cat_coarse ?id2 number))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp        at11   "  ?id "  para )" crlf))
)




;Added by Meena(20.4.10)
;She wept bitterly at the news.
(defrule at12
(declare (salience 4000))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id1 ?id2)
(id-root  ?id2   news)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp        at12   "  ?id "  suna_kara )" crlf))
)



;Added by Meena(27.5.11)
;The performance starts at seven. 
(defrule at13
(declare (salience 4000))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id1 ?id2)
(id-root  ?id2 one|two|three|four|five|six|seven|eight|nine|ten|eleven|twelve)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baje))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp        at13   "  ?id "  baje )" crlf))
)



(defrule at14
(declare (salience 0))
;(declare (salience 3900))
(id-root ?id at)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  at.clp 	at14   "  ?id "  para )" crlf))
)

;"at","Prep","1.para"
;He was waiting for her at the platform.
;--"2.meM"
;She works at a school for the handicapped.
;He joined the army at twenty-two.
;--"3.ke_yahAz"
;She stayed at her parents' for the whole vacation.
;--"4.ko{samaya}"
;At night the sky was totally clear.
;--"5.kI_ora"
;Don't throw stones at others.
;
