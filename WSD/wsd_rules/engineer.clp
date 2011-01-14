
(defrule engineer0
(declare (salience 5000))
(id-root ?id engineer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id engineering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aBiyAMwrikI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  engineer.clp  	engineer0   "  ?id "  aBiyAMwrikI )" crlf))
)

;"engineering","N","1.kala_banAne_kI_vixyA"
;He had trouble deciding which branch of engineering to study
;
;
(defrule engineer1
(declare (salience 4900))
(id-root ?id engineer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMjIniyara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  engineer.clp 	engineer1   "  ?id "  iMjIniyara )" crlf))
)

;"engineer","N","1.iMjIniyara"
;Ravi is a qualified mechanical engineer.
;
(defrule engineer2
(declare (salience 4800))
(id-root ?id engineer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMjIniyara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  engineer.clp 	engineer2   "  ?id "  iMjIniyara )" crlf))
)

;"engineer","V","1.iMjIniyara"
;He engineered the plot to kill the manager.
;
