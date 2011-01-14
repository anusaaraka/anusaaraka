
(defrule vigorous0
(declare (salience 5000))
(id-root ?id vigorous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prabala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vigorous.clp 	vigorous0   "  ?id "  prabala )" crlf))
)

(defrule vigorous1
(declare (salience 4900))
(id-root ?id vigorous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joraxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vigorous.clp 	vigorous1   "  ?id "  joraxAra )" crlf))
)

;"vigorous","Adj","1.joraxAra"
;Politicians conducted a vigorous campaign
;
;
