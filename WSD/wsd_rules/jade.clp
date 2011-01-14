
(defrule jade0
(declare (salience 5000))
(id-root ?id jade)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id jaded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id WakA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  jade.clp  	jade0   "  ?id "  WakA_huA )" crlf))
)

;"jaded","Adj","1.WakA_huA"
;He looked jaded.
;
(defrule jade1
(declare (salience 4900))
(id-root ?id jade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jeda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jade.clp 	jade1   "  ?id "  jeda )" crlf))
)

;"jade","N","1.jeda{harA_pawWara}"
;She was wearing jade ear-rings.
;
(defrule jade2
(declare (salience 4800))
(id-root ?id jade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jade.clp 	jade2   "  ?id "  WakA )" crlf))
)

;"jade","V","1.WakAnA"
;I was jaded by overwork.
;
