
(defrule rendezvous0
(declare (salience 5000))
(id-root ?id rendezvous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manoraMjana_sWala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rendezvous.clp 	rendezvous0   "  ?id "  manoraMjana_sWala )" crlf))
)

;"rendezvous","N","1.manoraMjana_sWala"
;That club is a rendezvous for journalists && critics.
;
(defrule rendezvous1
(declare (salience 4900))
(id-root ?id rendezvous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manoraMjana_hewu_viSeRa_sWAna_meM_ikatTA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rendezvous.clp 	rendezvous1   "  ?id "  manoraMjana_hewu_viSeRa_sWAna_meM_ikatTA_ho )" crlf))
)

;"rendezvous","VTI","1.manoraMjana_hewu_viSeRa_sWAna_meM_ikatTA_honA"
;Rendezvous in restaurant.
;
