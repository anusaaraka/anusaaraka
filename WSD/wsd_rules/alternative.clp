
(defrule alternative0
(declare (salience 5000))
(id-root ?id alternative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEkalpika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alternative.clp 	alternative0   "  ?id "  vEkalpika )" crlf))
)

;"alternative","Adj","1.vEkalpika"
;We have to find an alternative means of transport to reach there.
;
(defrule alternative1
(declare (salience 4900))
(id-root ?id alternative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikalpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alternative.clp 	alternative1   "  ?id "  vikalpa )" crlf))
)

;"alternative","N","1.vikalpa"
;He was left with no other alternative,so he resigned.
;
