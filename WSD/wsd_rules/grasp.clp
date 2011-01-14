
(defrule grasp0
(declare (salience 5000))
(id-root ?id grasp)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id grasping )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id loBI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  grasp.clp  	grasp0   "  ?id "  loBI )" crlf))
)

;"grasping","Adj","1.loBI"
;
(defrule grasp1
(declare (salience 4900))
(id-root ?id grasp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grasp.clp 	grasp1   "  ?id "  pakadZa )" crlf))
)

;"grasp","N","1.pakadZa"
;He has good grasp over the English language.
;
(defrule grasp2
(declare (salience 4800))
(id-root ?id grasp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grasp.clp 	grasp2   "  ?id "  pakadZa )" crlf))
)

;"grasp","VT","1.pakadZanA"
;The baby tightly grasped his mother's fingure.
;
