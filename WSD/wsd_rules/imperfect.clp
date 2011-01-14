
(defrule imperfect0
(declare (salience 5000))
(id-root ?id imperfect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id a-bilkula_TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  imperfect.clp 	imperfect0   "  ?id "  a-bilkula_TIka )" crlf))
)

(defrule imperfect1
(declare (salience 4900))
(id-root ?id imperfect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wruwipUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  imperfect.clp 	imperfect1   "  ?id "  wruwipUrNa )" crlf))
)

;"imperfect","Adj","1.wruwipUrNa"
;His imperfect knowledge about his subject always gets him in trouble.
;
;