
(defrule fivefold0
(declare (salience 5000))
(id-root ?id fivefold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAzca_gunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fivefold.clp 	fivefold0   "  ?id "  pAzca_gunA )" crlf))
)

;"fivefold","Adj","1.pAzca_gunA"
;There has been a fivefold increase in the prfits of our company this year.
;
(defrule fivefold1
(declare (salience 4900))
(id-root ?id fivefold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAzca_gunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fivefold.clp 	fivefold1   "  ?id "  pAzca_gunA )" crlf))
)

;"fivefold","Adv","1.pAzca_gunA"
;The prices of necessary commodities have increased fivefold since last year.
;
