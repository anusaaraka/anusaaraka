
(defrule tiptoe0
(declare (salience 5000))
(id-root ?id tiptoe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tiptoe.clp 	tiptoe0   "  ?id "  paMjA )" crlf))
)

;"tiptoe","N","1.paMjA{pAzva_kA}"
;Stand on your tiptoe to open the door.
;
(defrule tiptoe1
(declare (salience 4900))
(id-root ?id tiptoe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMjoM_ke_bala_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tiptoe.clp 	tiptoe1   "  ?id "  paMjoM_ke_bala_cala )" crlf))
)

;"tiptoe","V","1.paMjoM_ke_bala_calanA"
;The two kids tiptoed quietly && went out.
;
