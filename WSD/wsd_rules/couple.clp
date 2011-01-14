
(defrule couple0
(declare (salience 5000))
(id-root ?id couple)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id coupling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yugmana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  couple.clp  	couple0   "  ?id "  yugmana )" crlf))
)

;"coupling","N","1.yugmana/saMyojana"
;The concert was a rare coupling of Indian && Western classical music.
;
(defrule couple1
(declare (salience 4900))
(id-root ?id couple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yugala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  couple.clp 	couple1   "  ?id "  yugala )" crlf))
)

;"couple","N","1.yugala"
;A young married couple from Chicago are staying in that house.
;??He's coming for a couple of days.
;
(defrule couple2
(declare (salience 4800))
(id-root ?id couple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  couple.clp 	couple2   "  ?id "  milA )" crlf))
)

;"couple","V","1.milAnA/jodZanA"
;The bad light, coupled with ugly sound of the mike,spoiled the show.
;
