
(defrule cow0
(declare (salience 5000))
(id-root ?id cow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id cowed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id darA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cow.clp  	cow0   "  ?id "  darA_huA )" crlf))
)

;"cowed","Adj","1.darA huA"
;She feels cowed && diffident
;
(defrule cow1
(declare (salience 4900))
(id-root ?id cow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cow.clp 	cow1   "  ?id "  gAya )" crlf))
)

(defrule cow2
(declare (salience 4800))
(id-root ?id cow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id darA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cow.clp 	cow2   "  ?id "  darA )" crlf))
)

;"cow","VT","1.darAnA/XamakAnA"
;He was cowed by the rowdies to surrender his possessions.
;The industrialist was cowed by a criminal
;
;
