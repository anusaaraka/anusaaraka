
(defrule eligible0
(declare (salience 5000))
(id-root ?id eligible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eligible.clp 	eligible0   "  ?id "  yogya )" crlf))
)

(defrule eligible1
(declare (salience 4900))
(id-root ?id eligible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eligible.clp 	eligible1   "  ?id "  yogya )" crlf))
)

;"eligible","Adj","1.yogya"
;He is eligible for the contest.
;
;
