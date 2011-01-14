
(defrule swim0
(declare (salience 5000))
(id-root ?id swim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id swimming )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wErAkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  swim.clp  	swim0   "  ?id "  wErAkI )" crlf))
)

;"swimming","N","1.wErAkI"
;He likes swimming as a sport.
;
(defrule swim1
(declare (salience 4900))
(id-root ?id swim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swim.clp 	swim1   "  ?id "  wEra )" crlf))
)

(defrule swim2
(declare (salience 4800))
(id-root ?id swim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wErAkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swim.clp 	swim2   "  ?id "  wErAkI )" crlf))
)

;"swim","N","1.wErAkI"
;Early morning he had a swim in the lake
;
;