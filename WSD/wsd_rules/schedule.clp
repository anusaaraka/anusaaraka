
(defrule schedule0
(declare (salience 5000))
(id-root ?id schedule)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id scheduled )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id parigaNiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  schedule.clp  	schedule0   "  ?id "  parigaNiwa )" crlf))
)

(defrule schedule1
(declare (salience 4900))
(id-root ?id schedule)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id scheduled )
(id-word ?id1 time)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  schedule.clp 	schedule1   "  ?id "  nirXAriwa )" crlf))
)

;"scheduled","V","1.parigaNiwa"
;The train is scheduled to arrive at 14:50 hrs.
;
(defrule schedule2
(declare (salience 4800))
(id-root ?id schedule)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  schedule.clp 	schedule2   "  ?id "  sUcI )" crlf))
)

;default_sense && category=noun	kAryakrama	0
;"schedule","N","1.kAryakrama"
;I couldn't go to the market as I had very tight schedule.
;--"2.sUcI"
;schedule4 of the companies act should be referred by any enterprenuer
;
;
