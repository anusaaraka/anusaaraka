
(defrule copy0
(declare (salience 5000))
(id-root ?id copy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  copy.clp 	copy0   "  ?id "  prawi )" crlf))
)

(defrule copy1
(declare (salience 4900))
(id-root ?id copy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakala_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  copy.clp 	copy1   "  ?id "  nakala_uwAra )" crlf))
)

;"copy","V","1.nakala_uwAranA"
;The teacher told the students to copy all the points written on the board.
;
;