
(defrule fresh0
(declare (salience 5000))
(id-root ?id fresh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAjA-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fresh.clp 	fresh0   "  ?id "  wAjA- )" crlf))
)

(defrule fresh1
(declare (salience 4900))
(id-root ?id fresh)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fresh.clp 	fresh1   "  ?id "  wAjA )" crlf))
)

;"fresh","Adj","1.wAjA"
;Have only fresh bread for breakfast.
;
;