
(defrule whichever0
(declare (salience 5000))
(id-root ?id whichever)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whichever.clp 	whichever0   "  ?id "  jo_BI )" crlf))
)

;"whichever","Det","1.jo_BI"
;Take whichever course you like.
;
(defrule whichever1
(declare (salience 4900))
(id-root ?id whichever)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whichever.clp 	whichever1   "  ?id "  jo_BI )" crlf))
)

;"whichever","Pron","1.jo_BI"
;Take whichever course you like.
;
