
(defrule nothing0
(declare (salience 5000))
(id-root ?id nothing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_BI_nahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nothing.clp 	nothing0   "  ?id "  kuCa_BI_nahI )" crlf))
)

(defrule nothing1
(declare (salience 4900))
(id-root ?id nothing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nothing.clp 	nothing1   "  ?id "  kuCa_nahIM )" crlf))
)

;"nothing","Pron","1.kuCa_nahIM"
;There is nothing as refreshing as lemon juice.
;
;