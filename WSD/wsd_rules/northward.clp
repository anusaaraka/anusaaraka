
(defrule northward0
(declare (salience 5000))
(id-root ?id northward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwaronmuKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  northward.clp 	northward0   "  ?id "  uwwaronmuKa )" crlf))
)

;"northward","Adj","1.uwwaronmuKa"
;The wind is taking the northward course.
;
(defrule northward1
(declare (salience 4900))
(id-root ?id northward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwara_kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  northward.clp 	northward1   "  ?id "  uwwara_kI_ora )" crlf))
)

;"northward","Adv","1.uwwara_kI_ora"
;The ship is sailing northward.
;
