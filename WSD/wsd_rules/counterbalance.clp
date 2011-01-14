
(defrule counterbalance0
(declare (salience 5000))
(id-root ?id counterbalance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiBAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  counterbalance.clp 	counterbalance0   "  ?id "  prawiBAra )" crlf))
)

;"counterbalance","N","1.prawiBAra"
;An additional battalion was sent as a counterbalance to the enemy forces.
;
(defrule counterbalance1
(declare (salience 4900))
(id-root ?id counterbalance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wulya_BAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  counterbalance.clp 	counterbalance1   "  ?id "  wulya_BAra_kara )" crlf))
)

;"counterbalance","VT","1.wulya_BAra_karanA"
;An additional battalion was sent to counterbalance the enemy forces.
;
