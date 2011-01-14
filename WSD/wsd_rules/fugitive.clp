
(defrule fugitive0
(declare (salience 5000))
(id-root ?id fugitive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BagodZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fugitive.clp 	fugitive0   "  ?id "  BagodZA )" crlf))
)

;"fugitive","Adj","1.BagodZA"
;The U.S.A. fugitive lived in a European country.
;
(defrule fugitive1
(declare (salience 4900))
(id-root ?id fugitive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BagodZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fugitive.clp 	fugitive1   "  ?id "  BagodZA )" crlf))
)

;"fugitive","N","1.BagodZA"
;Rasheed was a U.K. fugitive.
;The fugitive asked for asylum in Britain.
;
