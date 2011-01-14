
(defrule headed0
(declare (salience 5000))
(id-root ?id headed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id siravAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  headed.clp 	headed0   "  ?id "  siravAlA )" crlf))
)

(defrule headed1
(declare (salience 4900))
(id-root ?id headed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id siravAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  headed.clp 	headed1   "  ?id "  siravAlA )" crlf))
)

(defrule headed2
(declare (salience 4800))
(id-root ?id headed)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIrRa_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  headed.clp 	headed2   "  ?id "  SIrRa_karanA )" crlf))
)

;He headed towards ..
;"headed","Adj","1.siravAlA"
;hipopotomasa badA"headed" jAnavara hE.
;
;
