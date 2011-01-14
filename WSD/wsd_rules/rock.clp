
(defrule rock0
(declare (salience 5000))
(id-root ?id rock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cattAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rock.clp 	rock0   "  ?id "  cattAna )" crlf))
)

(defrule rock1
(declare (salience 4900))
(id-root ?id rock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rock.clp 	rock1   "  ?id "  hila )" crlf))
)

;"rock","VTI","1.hilanA"
;She sat rocking in her chair.
;--"2.hila_jAnA{xenA}"        
;The whole building rocked as the bomb exploded.
;The scandal about bribe rocked his life. 
;
;