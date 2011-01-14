
(defrule buzz0
(declare (salience 5000))
(id-root ?id buzz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BanaBanAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buzz.clp 	buzz0   "  ?id "  BanaBanAhata )" crlf))
)

;"buzz","N","1.BanaBanAhata"
;The buzz of a bee distracted my concentration.
;
(defrule buzz1
(declare (salience 4900))
(id-root ?id buzz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BanaBanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buzz.clp 	buzz1   "  ?id "  BanaBanA )" crlf))
)

;"buzz","V","1.BanaBanAnA"
;This office is buzzing with activity.
;
