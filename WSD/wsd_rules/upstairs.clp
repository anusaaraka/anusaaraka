
(defrule upstairs0
(declare (salience 5000))
(id-root ?id upstairs)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upstairs.clp 	upstairs0   "  ?id "  UparI )" crlf))
)

;"upstairs","Adj","1.UparI"
;I left the upstairs window open.
;
(defrule upstairs1
(declare (salience 4900))
(id-root ?id upstairs)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparI_maMjZila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upstairs.clp 	upstairs1   "  ?id "  UparI_maMjZila )" crlf))
)

;"upstairs","Adv","1.UparI_maMjZila"
;They lived upstairs
;
(defrule upstairs2
(declare (salience 4800))
(id-root ?id upstairs)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_kI_maMjila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upstairs.clp 	upstairs2   "  ?id "  Upara_kI_maMjila )" crlf))
)

;"upstairs","N","1.Upara_kI_maMjila/koTA"
;Bungalows do not have any upstairs.
;
