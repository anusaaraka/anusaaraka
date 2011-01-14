
(defrule invalid0
(declare (salience 5000))
(id-root ?id invalid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aviXimAnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invalid.clp 	invalid0   "  ?id "  aviXimAnya )" crlf))
)

;"invalid","Adj","1.aviXimAnya"
;His passport became invalid.
;--"2.amAnya"
;Most of her arguments sounded invalid..
;
(defrule invalid1
(declare (salience 4900))
(id-root ?id invalid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aSakwa_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invalid.clp 	invalid1   "  ?id "  aSakwa_vyakwi )" crlf))
)

;"invalid","N","1.aSakwa_vyakwi"
;It is heartening to know that an invalid is getting oppurtunities.
;
(defrule invalid2
(declare (salience 4800))
(id-root ?id invalid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOkarI_CodZane_para_majabUra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invalid.clp 	invalid2   "  ?id "  nOkarI_CodZane_para_majabUra_kara )" crlf))
)

;"invalid","V","1.nOkarI_CodZane_para_majabUra_karanA{viSeRa_senA_meM}"
;He was invalided out of the army after he had an injury in the war front.
;
