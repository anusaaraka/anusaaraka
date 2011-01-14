
(defrule wall0
(declare (salience 5000))
(id-root ?id wall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id walling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xIvAra_sAmagrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wall.clp  	wall0   "  ?id "  xIvAra_sAmagrI )" crlf))
)

;"walling","N","1.xIvAra sAmagrI"
;
(defrule wall1
(declare (salience 4900))
(id-root ?id wall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xIvAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wall.clp 	wall1   "  ?id "  xIvAra )" crlf))
)

(defrule wall2
(declare (salience 4800))
(id-root ?id wall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xIvAra_se_Gera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wall.clp 	wall2   "  ?id "  xIvAra_se_Gera )" crlf))
)

;"wall","VT","1.xIvAra_se_GeranA"
;The waves formed a wall of water 
;
;