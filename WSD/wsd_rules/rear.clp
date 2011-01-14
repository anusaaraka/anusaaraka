
(defrule rear0
(declare (salience 5000))
(id-root ?id rear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCavAdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rear.clp 	rear0   "  ?id "  piCavAdZA )" crlf))
)

;"rear","N","1.piCavAdZA"
;He has taken a photograph of the house from the rear.
;--"2.pICe_kA_BAga"
;He kicked him on the rear.
;
(defrule rear1
(declare (salience 4900))
(id-root ?id rear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rear.clp 	rear1   "  ?id "  uTA )" crlf))
)

;"rear","VTI","1.uTAnA"
;The snake reared its head. 
;--"2.pAlana_poRaNa_karanA"
;The male tiger helps the female to rear the youngs.
;--"3.piCale_pEra_para_KadZe_honA"
;The horse reared up in fright.
;
