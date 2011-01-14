
(defrule overtime0
(declare (salience 5000))
(id-root ?id overtime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samayopari))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overtime.clp 	overtime0   "  ?id "  samayopari )" crlf))
)

;"overtime","Adv","1.samayopari"
;The workers are paid extra for working overtime
;
(defrule overtime1
(declare (salience 4900))
(id-root ?id overtime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirxiRta_samaya_se_awirikwa_kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overtime.clp 	overtime1   "  ?id "  nirxiRta_samaya_se_awirikwa_kAma )" crlf))
)

;"overtime","N","1.nirxiRta_samaya_se_awirikwa_kAma"
;Do three hours overtime
;
