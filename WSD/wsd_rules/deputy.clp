
(defrule deputy0
(declare (salience 5000))
(id-root ?id deputy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upa-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deputy.clp 	deputy0   "  ?id "  upa- )" crlf))
)

;"deputy","Adj","1.upa-"
;The deputy commissionar of police told the press about the big robbery.
;
(defrule deputy1
(declare (salience 4900))
(id-root ?id deputy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiniXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deputy.clp 	deputy1   "  ?id "  prawiniXi )" crlf))
)

;"deputy","N","1.prawiniXi"
;The deputy is in-charge until the manager returns.
;
