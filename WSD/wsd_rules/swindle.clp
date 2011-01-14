
(defrule swindle0
(declare (salience 5000))
(id-root ?id swindle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XoKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swindle.clp 	swindle0   "  ?id "  XoKA )" crlf))
)

;"swindle","N","1.XoKA"
(defrule swindle1
(declare (salience 4900))
(id-root ?id swindle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XoKA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swindle.clp 	swindle1   "  ?id "  XoKA_xe )" crlf))
)

;"swindle","V","1.XoKA_xenA"
;Ram was swindled by the insurance company.
;
