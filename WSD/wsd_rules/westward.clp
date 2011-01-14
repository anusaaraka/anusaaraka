
(defrule westward0
(declare (salience 5000))
(id-root ?id westward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paScima_kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  westward.clp 	westward0   "  ?id "  paScima_kI_ora )" crlf))
)

;"westward","Adj","1.paScima_kI_ora"
;The yacht is moving westward.
;
(defrule westward1
(declare (salience 4900))
(id-root ?id westward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paScima_kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  westward.clp 	westward1   "  ?id "  paScima_kI_ora )" crlf))
)

;"westward","Adv","1.paScima_kI_ora"
;Student's hostels are built westward.
;
