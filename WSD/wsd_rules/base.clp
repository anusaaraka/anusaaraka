
(defrule base0
(declare (salience 5000))
(id-root ?id base)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wucCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  base.clp 	base0   "  ?id "  wucCa )" crlf))
)

;"base","Adj","1.wucCa/nIca"
;They spend most of their time in taking about base topics.
;
(defrule base1
(declare (salience 4900))
(id-root ?id base)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  base.clp 	base1   "  ?id "  AXAra )" crlf))
)

;"base","N","1.AXAra"
;It is said that Sanskrit is the base of all European languages.
;
(defrule base2
(declare (salience 4800))
(id-root ?id base)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  base.clp 	base2   "  ?id "  AXAriwa_kara )" crlf))
)

;"base","VT","1.AXAriwa_karanA"
;Ram's PHD dissertation was based on computer.
;
