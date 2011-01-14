
(defrule blight0
(declare (salience 5000))
(id-root ?id blight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blight.clp 	blight0   "  ?id "  pAlA )" crlf))
)

;"blight","N","1.pAlA/wuRAra"
(defrule blight1
(declare (salience 4900))
(id-root ?id blight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kumhalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blight.clp 	blight1   "  ?id "  kumhalA )" crlf))
)

;"blight","VT","1.kumhalAnA/muraJAnA/pAlA_mAranA"
