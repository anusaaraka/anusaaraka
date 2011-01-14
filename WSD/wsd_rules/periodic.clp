
(defrule periodic0
(declare (salience 5000))
(id-root ?id periodic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyawakAlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  periodic.clp 	periodic0   "  ?id "  niyawakAlika )" crlf))
)

;"periodic","Adj","1.niyawakAlika"
;A periodic review of expenditure is necessary to save money.
;
(defrule periodic1
(declare (salience 4900))
(id-root ?id periodic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyawakAla_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  periodic.clp 	periodic1   "  ?id "  niyawakAla_meM )" crlf))
)

;"periodic","Adv","1.niyawakAla_meM"
;For a good health, we should go to check up our body by doctor periodically.
;
(defrule periodic2
(declare (salience 4800))
(id-root ?id periodic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyawakAlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  periodic.clp 	periodic2   "  ?id "  niyawakAlika )" crlf))
)

;"periodic","N","1.niyawakAlika"
;India Today is a periodical magazine.
;
