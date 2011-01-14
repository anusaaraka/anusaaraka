
(defrule zigzag0
(declare (salience 5000))
(id-root ?id zigzag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teDZA-meDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zigzag.clp 	zigzag0   "  ?id "  teDZA-meDZA )" crlf))
)

;"zigzag","Adj","1.teDZA-meDZA"
;It's a zigzag road from Madurai to Ooty.
;
(defrule zigzag1
(declare (salience 4900))
(id-root ?id zigzag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teDZI-meDZI_lakIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zigzag.clp 	zigzag1   "  ?id "  teDZI-meDZI_lakIra )" crlf))
)

;"zigzag","N","1.teDZI-meDZI_lakIra/moda"
;The road to Ooty forms a zigzag from Madurai.
;
(defrule zigzag2
(declare (salience 4800))
(id-root ?id zigzag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teDZA-meDZA_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zigzag.clp 	zigzag2   "  ?id "  teDZA-meDZA_cala )" crlf))
)

;"zigzag","V","1.teDZA-meDZA_calanA"
;The road ffrom Madurai zigzags to Ooty.
;
