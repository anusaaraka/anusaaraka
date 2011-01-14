
(defrule duplicate0
(declare (salience 5000))
(id-root ?id duplicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duplicate.clp 	duplicate0   "  ?id "  prawi )" crlf))
)

;"duplicate","Adj","1.prawi/xviguNa/xoharA"
;A duplicate key
;
(defrule duplicate1
(declare (salience 4900))
(id-root ?id duplicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawilipi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duplicate.clp 	duplicate1   "  ?id "  prawilipi )" crlf))
)

;"duplicate","N","1.prawilipi/nakala"
;He made a duplicate for the files
;
(defrule duplicate2
(declare (salience 4800))
(id-root ?id duplicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawilipi_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duplicate.clp 	duplicate2   "  ?id "  prawilipi_banA )" crlf))
)

;"duplicate","VT","1.prawilipi_banAnA"
