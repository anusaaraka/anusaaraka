
(defrule rape0
(declare (salience 5000))
(id-root ?id rape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balAwkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rape.clp 	rape0   "  ?id "  balAwkAra )" crlf))
)

;"rape","N","1.balAwkAra"
;He was sentenced to jail for committing a rape. 
;--"2.pIle_raMga_ke_PUloM_vAlA_pOXA"
;Rape is one of the plants of indigo.  
;
(defrule rape1
(declare (salience 4900))
(id-root ?id rape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balAwkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rape.clp 	rape1   "  ?id "  balAwkAra_kara )" crlf))
)

;"rape","VT","1.balAwkAra_karanA"
;The girl claimed that she had been raped.
;
