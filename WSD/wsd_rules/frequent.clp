
(defrule frequent0
(declare (salience 5000))
(id-root ?id frequent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAra_bAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frequent.clp 	frequent0   "  ?id "  bAra_bAra )" crlf))
)

;Refer sabdasutra
;The frequent sleeping of the boys in the class ..
;default_sense && category=adjective	aksara_AnevAlA	0
;"frequent","Adj","1.aksara_AnevAlA"
;There are no frequent bus service from here to Koti.
;
(defrule frequent1
(declare (salience 4900))
(id-root ?id frequent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAra_bAra_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frequent.clp 	frequent1   "  ?id "  bAra_bAra_jA )" crlf))
)

;"frequent","VT","1.bAra_bAra_jAnA"
;He frequents to her place every now && then.
;
