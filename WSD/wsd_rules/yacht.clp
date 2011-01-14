
(defrule yacht0
(declare (salience 5000))
(id-root ?id yacht)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yacht.clp 	yacht0   "  ?id "  nOkA )" crlf))
)

;"yacht","N","1.nOkA"
;I like to sail in a yacht with my friend.
;
(defrule yacht1
(declare (salience 4900))
(id-root ?id yacht)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOkA_sEra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yacht.clp 	yacht1   "  ?id "  nOkA_sEra_kara )" crlf))
)

;"yacht","VI","1.nOkA_sEra_karanA/ukwa_nOkA_meM_jAnA_yA_sEra_karanA"
;I went yachting from Rameshwaram to Kanyakumari coast.
;
