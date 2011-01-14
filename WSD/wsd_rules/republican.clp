
(defrule republican0
(declare (salience 5000))
(id-root ?id republican)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaNawAMwrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  republican.clp 	republican0   "  ?id "  gaNawAMwrika )" crlf))
)

;"republican","Adj","1.gaNawAMwrika"
;An Indian favours a republican form of government.
;
;(defrule republican1
;(declare (salience 4900))
;(id-root ?id republican)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id ripablikana))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  republican.clp 	republican1   "  ?id "  ripablikana )" crlf))
;)

;"republican","N","1.ripablikana"
;He is a member of the U.S.republican party
;
