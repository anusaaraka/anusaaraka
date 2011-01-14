
(defrule narcotic0
(declare (salience 5000))
(id-root ?id narcotic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIMxa_lAne_vAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  narcotic.clp 	narcotic0   "  ?id "  nIMxa_lAne_vAlI )" crlf))
)

;"narcotic","Adj","1.nIMxa_lAne_vAlI"
;The drug had a narcotic affect on me.
;
(defrule narcotic1
(declare (salience 4900))
(id-root ?id narcotic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIMxa_lAne_vAlI_xavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  narcotic.clp 	narcotic1   "  ?id "  nIMxa_lAne_vAlI_xavA )" crlf))
)

;"narcotic","N","1.nIMxa_lAne_vAlI_xavA"
;He was arrested for trafficking in narcotics.
;Morphine is a narcotic.
;
