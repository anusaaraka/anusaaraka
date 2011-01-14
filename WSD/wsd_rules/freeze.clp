
(defrule freeze0
(declare (salience 5000))
(id-root ?id freeze)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id frozen )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jamI_huI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  freeze.clp  	freeze0   "  ?id "  jamI_huI )" crlf))
)

;"frozen","Adj","1.jamI_huI"
;Skating is done on frozen ice.
;
(defrule freeze1
(declare (salience 4900))
(id-root ?id freeze)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 he)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jama_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  freeze.clp 	freeze1   "  ?id "  jama_jA )" crlf))
)

(defrule freeze2
(declare (salience 4800))
(id-root ?id freeze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  freeze.clp 	freeze2   "  ?id "  jamA_xe )" crlf))
)

;"freeze","VT","1.jamA_xenA"
;I would freeze to death in this office if the air condition is turned on for 24
;hours.
;
;
