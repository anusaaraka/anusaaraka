
(defrule beloved0
(declare (salience 5000))
(id-root ?id beloved)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id priya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beloved.clp 	beloved0   "  ?id "  priya )" crlf))
)

;"beloved","Adj","1.priya"
;Her beloved daughter is arriving tommorrow from America.
;
(defrule beloved1
(declare (salience 4900))
(id-root ?id beloved)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id priya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beloved.clp 	beloved1   "  ?id "  priya )" crlf))
)

;"beloved","N","1.priya"
;Gayatree is Ravi's beloved.
;
