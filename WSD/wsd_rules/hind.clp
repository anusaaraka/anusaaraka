
(defrule hind0
(declare (salience 5000))
(id-root ?id hind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hind.clp 	hind0   "  ?id "  piCalA )" crlf))
)

;"hind","Adj","1.piCalA"
;GodZe kI pITa kA'hind'hissA putTA kahalAwA hE.
;
(defrule hind1
(declare (salience 4900))
(id-root ?id hind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hiranI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hind.clp 	hind1   "  ?id "  hiranI )" crlf))
)

;"hind","N","1.hiranI"
;'hind' kA SikAra karanA aparAXa hE.
;
