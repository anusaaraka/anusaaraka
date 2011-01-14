
(defrule seven0
(declare (salience 5000))
(id-root ?id seven)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seven.clp 	seven0   "  ?id "  sAwa )" crlf))
)

;"seven","Det","1.sAwa"
;There are seven days in a week.
;
(defrule seven1
(declare (salience 4900))
(id-root ?id seven)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seven.clp 	seven1   "  ?id "  sAwa )" crlf))
)

;"seven","N","1.sAwa"
;There are seven days in a week.
;
