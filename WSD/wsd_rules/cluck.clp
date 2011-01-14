
(defrule cluck0
(declare (salience 5000))
(id-root ?id cluck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kudZakudZAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cluck.clp 	cluck0   "  ?id "  kudZakudZAnA )" crlf))
)

;"cluck","N","1.kudZakudZAnA"
;The cluck of hen could be heard from the poultry farm.
;
(defrule cluck1
(declare (salience 4900))
(id-root ?id cluck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kudZakudZAne_kI_AvAjZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cluck.clp 	cluck1   "  ?id "  kudZakudZAne_kI_AvAjZa_kara )" crlf))
)

;"cluck","V","1.kudZakudZAne_kI_AvAjZa_karanA"
;She has the habit of clucking her tongue.
;
