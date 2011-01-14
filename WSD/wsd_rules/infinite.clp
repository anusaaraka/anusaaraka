
(defrule infinite0
(declare (salience 5000))
(id-root ?id infinite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asImiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infinite.clp 	infinite0   "  ?id "  asImiwa )" crlf))
)

;"infinite","Adj","1.asImiwa"
;--"2.aparimiwa"
;The infinite ingenuity of man
;God's infinite wisdom
;
(defrule infinite1
(declare (salience 4900))
(id-root ?id infinite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ananwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infinite.clp 	infinite1   "  ?id "  ananwa )" crlf))
)

;"infinite","N","1.ananwa/ISvara"
