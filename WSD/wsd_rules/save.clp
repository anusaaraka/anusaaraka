
(defrule save0
(declare (salience 4900))
(id-root ?id save)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id saving )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bacAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  save.clp  	save0   "  ?id "  bacAva )" crlf))
)
;@@@ Added by jagriti(30.11.2013)
;It took me ages to save up enough money to go travelling.[veena mam]
;यात्रा पर जाने के लिए काफी पैसे जमा करने में मुझे बहुत समय लग गया .
;She's saving up for a new bike.
;नई साईकिल खरीदने के लिए वह धन जमा कर रही है .
(defrule save1
(declare (salience 5500))
(id-root ?id save)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jamA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  save.clp  	save1   "  ?id "  jamA_kara )" crlf))
)

;"saving","Adj","1.bacAva"
;A great saving of money && time is needed for everyone.
;
(defrule save2
(declare (salience 4800))
(id-root ?id save)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sivAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  save.clp 	save2   "  ?id "  sivAya )" crlf))
)

;"save","Prep","1.sivAya"
(defrule save3
(declare (salience 4700))
(id-root ?id save)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  save.clp 	save3   "  ?id "  bacA )" crlf))
)

(defrule save4
(declare (salience 4600))
(id-root ?id save)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  save.clp 	save4   "  ?id "  baca )" crlf))
)

;default_sense && category=verb	bacA_le[xe]	0
;"save","V","1.bacA_le[xe]"
;--"2.bacA_lenA[xenA]"
;He saved her from drowning.4
;
