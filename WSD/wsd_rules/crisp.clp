
(defrule crisp0
(declare (salience 5000))
(id-root ?id crisp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kurakura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crisp.clp 	crisp0   "  ?id "  kurakura )" crlf))
)

;"crisp","Adj","1.kurakura"
;crisp potato chips
;crisp carrot && celery sticks
;--"2.spaRta/viSaxa"
;Her answer was crisp && clear.
;crisp clear nights && frosty mornings
;
(defrule crisp1
(declare (salience 4900))
(id-root ?id crisp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kurakurA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crisp.clp 	crisp1   "  ?id "  kurakurA_banA )" crlf))
)

;"crisp","VT","1.kurakurA_banAnA/batanA"
;Please crisp the french fries up in the oven.
;
