
(defrule drunk0
(declare (salience 5000))
(id-root ?id drunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mawwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drunk.clp 	drunk0   "  ?id "  mawwa )" crlf))
)

;"drunk","Adj","1.mawwa/naSe_meM_cUra"
(defrule drunk1
(declare (salience 4900))
(id-root ?id drunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mawwa_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drunk.clp 	drunk1   "  ?id "  mawwa_vyakwi )" crlf))
)

;"drunk","N","1.mawwa_vyakwi"
