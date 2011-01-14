
(defrule pandemic0
(declare (salience 5000))
(id-root ?id pandemic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeSavyApI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pandemic.clp 	pandemic0   "  ?id "  xeSavyApI )" crlf))
)

;"pandemic","Adj","1.xeSavyApI"
;Pandemic diseases cause a heavy destruction of life as well as property.
;
(defrule pandemic1
(declare (salience 4900))
(id-root ?id pandemic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvamArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pandemic.clp 	pandemic1   "  ?id "  viSvamArI )" crlf))
)

;"pandemic","N","1.viSvamArI"
;Pandemic disease is as devastating  as epidemic.
;
