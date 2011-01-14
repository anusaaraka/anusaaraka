
(defrule total0
(declare (salience 5000))
(id-root ?id total)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sampUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  total.clp 	total0   "  ?id "  sampUrNa )" crlf))
)

;"total","Adj","1.sampUrNa"
;It is awe-inspiing to watch the total eclipse.
;
(defrule total1
(declare (salience 4900))
(id-root ?id total)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  total.clp 	total1   "  ?id "  joda )" crlf))
)

;"total","N","1.joda"
;India scored a total of 278 runs.
;
(defrule total2
(declare (salience 4800))
(id-root ?id total)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joda_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  total.clp 	total2   "  ?id "  joda_nikAla )" crlf))
)

;"total","V","1.joda_nikAlanA"
;You havn't done the total yet?.
;
