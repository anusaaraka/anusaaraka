
(defrule cunning0
(declare (salience 5000))
(id-root ?id cunning)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAlAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cunning.clp 	cunning0   "  ?id "  cAlAka )" crlf))
)

;"cunning","Adj","1.cAlAka"
;A cunning person should be kept away
;
(defrule cunning1
(declare (salience 4900))
(id-root ?id cunning)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUrwawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cunning.clp 	cunning1   "  ?id "  XUrwawA )" crlf))
)

;"cunning","N","1.XUrwawA"
;He resorted to cunning when he could not get what he wanted
;
