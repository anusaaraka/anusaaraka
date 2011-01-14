
(defrule game0
(declare (salience 5000))
(id-root ?id game)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id gaming )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id juA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  game.clp  	game0   "  ?id "  juA )" crlf))
)

;"gaming","N","1.juA"
;He ruined himself by spending his entire income in gaming.
;
(defrule game1
(declare (salience 4900))
(id-root ?id game)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nidara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  game.clp 	game1   "  ?id "  nidara )" crlf))
)

;"game","Adj","1.nidara"
;He is game for dare-devil shows.
;--"2.lazgadZA"
;He has quit playing as his left foot is game.
;
(defrule game2
(declare (salience 4800))
(id-root ?id game)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  game.clp 	game2   "  ?id "  Kela )" crlf))
)

;"game","N","1.Kela"
;Cricket is the most popular game in India.
;
