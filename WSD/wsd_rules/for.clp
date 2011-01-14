;You can substitute oil for butter in this recipe. 
;Added by Sukhada.
(defrule substitute_for
(declare (salience 5000))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-root ?kriyA substitute)
(kriyA-for_saMbanXI ?kriyA ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_baxale_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp   substitute_for  "  ?id " ke_baxale_meM )" crlf))
)


(defrule for0
(declare (salience 5000))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) reason)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_vajaha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for0   "  ?id "  kI_vajaha_se )" crlf))
)

(defrule for1
(declare (salience 4900))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) time|time period|period of time|period|moment|minute|second|instant|point in time|clock time|hour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for1   "  ?id "  waka )" crlf))
)

(defrule for2
(declare (salience 4800))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) distance|spacing|length|size|magnitude|measure)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for2   "  ?id "  - )" crlf))
)



;Modified by meena(25.9.09), added (kriyA-for_saMbanXI  ?id1 ?id2)and changed (id-word =(+ ?id 1) long|hours...) accordingly
;I lived there for two years . 
;I wondered for a long time why everyone liked her so much . 
(defrule for3
(declare (salience 4700))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) long|hours|weeks|years) ;modified by Dipti-27-07-09 ;dropped 'a' from the list
(id-word ?id2  long|hours|weeks|years|time) ;Added "time" in the list(Meena 8.02.10)
(kriyA-for_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for3   "  ?id "  waka )" crlf))
)


;Modified by Meena(26.9.09).Commented (id-word =(....) animate) as there is no list for animate in the database.Instead of this, I added (id-cat_coarse =(+ ?id 1) PropN) and (kriyA-for_saMbanXI ?id1  =(+ ?id 1))
;I waited for Seeta for hours .
(defrule for5
(declare (salience 4700))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) PropN)
(kriyA-for_saMbanXI ?id1  =(+ ?id 1))
;(id-word =(+ ?id 1) animate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp       for5   "  ?id "  ke_liye )" crlf))
)




;I did not wait for long
(defrule for4
(declare (salience 4600))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) wait)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for4   "  ?id "  kI )" crlf))
)





(defrule for6
(declare (salience 4400))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyoMki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for6   "  ?id "  kyoMki )" crlf))
)

;"for","Conj","1.kyoMki"
;Rama was very angry with Madhu for she has again forgotten her birthday.


;;Commented by Meena(9.3.10)
;;Added  by Meena(9.3.10)
;;Thomas Edison tried two thousand different materials in search of a filament for the light bulb .
;(defrule for07
;(declare (salience 4300))
;(id-root ?id for)
;?mng <-(meaning_to_be_decided ?id)
;(viSeRya-for_saMbanXI =(- ?id 1)  ?id1)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id kA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp       for07   "  ?id "  kA )" crlf))
;)





;Salience reduced by Meena(9.3.10)
(defrule for7
(declare (salience 0))
;(declare (salience 4300))
(id-root ?id for)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  for.clp 	for7   "  ?id "  ke_liye )" crlf))
)

;"for","Prep","1.ke_liye"
;Ravi bought a book for Sonu.
;Yash has a strong desire for a remote-control car.
;--"2.kI_ora_se"
;Speak for yourself, not for all.
;We do not know who the MP is for this district.
;--"3.ke_hisAba_se"
;She is very tall for her age.
;--"4.waka"
;He went on && on for an hour.
;
