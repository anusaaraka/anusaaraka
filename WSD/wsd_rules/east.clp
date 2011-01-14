
(defrule east0
(declare (salience 5000))
(id-root ?id east)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa =(+ ?id 1) ?id)
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrvI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  east.clp 	east0   "  ?id "  pUrvI )" crlf))
)

;"east","Adj","1.pUrvI"
;Trade was carried on east coast.
;
(defrule east1
(declare (salience 4900))
(id-root ?id east)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id =(- ?id 1))
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  east.clp 	east1   "  ?id "  pUrva )" crlf))
)

;"east","N","1.pUrva"
;They come from the east.
;The East includes parts of Asia collectively lying east of Europe.
;
