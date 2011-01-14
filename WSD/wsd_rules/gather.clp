
(defrule gather0
(declare (salience 5000))
(id-root ?id gather)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id gathering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BIdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  gather.clp  	gather0   "  ?id "  BIdZa )" crlf))
)

;"gathering","N","1.BIdZa"
;There was a large gathering of devotees in the temple.
;
(defrule gather1
(declare (salience 4900))
(id-root ?id gather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZe_kI_waha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gather.clp 	gather1   "  ?id "  kapadZe_kI_waha )" crlf))
)

;"gather","N","1.kapadZe_kI_waha"
;I like two gathers in my  trousers.
;
(defrule gather2
(declare (salience 4800))
(id-root ?id gather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikaTTA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gather.clp 	gather2   "  ?id "  ikaTTA_kara )" crlf))
)

;"gather","V","1.ikaTTA_kara"
;--"2.ikaTTA_karanA"
;He gathered as many flowers as he could.
;--"3.pariNAma_nikAlanA"
;I gather from the recent reports that external forces are trying to create 
;trouble in the country.
;
