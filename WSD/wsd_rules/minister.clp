
(defrule minister0
(declare (salience 5000))
(id-root ?id minister)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMwrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  minister.clp 	minister0   "  ?id "  maMwrI )" crlf))
)

;"minister","N","1.maMwrI"
;The minister was genuinely pleased by the work.
;
(defrule minister1
(declare (salience 4900))
(id-root ?id minister)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sevA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  minister.clp 	minister1   "  ?id "  sevA_kara )" crlf))
)

;"minister","V","1.sevA_karanA"
;Minister her properly, she's the future queen.
;
