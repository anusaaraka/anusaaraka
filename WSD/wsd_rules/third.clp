
;previous_word=one	wihAI	0
;$$$ Modified category from 'cardinal' to 'number' By Roja (27-12-13). Suggested by Sukhada.
;One third of the country is expected to be hit by a heatwave. [Example suggested by Sukhada]
(defrule third0
(declare (salience 5000))
(id-root ?id third)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wihAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  third.clp 	third0   "  ?id "  wihAI )" crlf))
)

(defrule third1
(declare (salience 4900))
(id-root ?id third)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIsarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  third.clp 	third1   "  ?id "  wIsarA )" crlf))
)

(defrule third2
(declare (salience 4800))
(id-root ?id third)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIsarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  third.clp 	third2   "  ?id "  wIsarA )" crlf))
)

;"third","Adj","1.wIsarA"
;She got third position in the debate.
;
;
