
(defrule editorial0
(declare (salience 5000))
(id-root ?id editorial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sampAxakIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  editorial.clp 	editorial0   "  ?id "  sampAxakIya )" crlf))
)

;"editorial","Adj","1.sampAxakIya"
;He does the editiorial jobs for the press. 
;
(defrule editorial1
(declare (salience 4900))
(id-root ?id editorial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sampAxakIya_leKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  editorial.clp 	editorial1   "  ?id "  sampAxakIya_leKa )" crlf))
)

;"editorial","N","1.sampAxakIya_leKa"
;Current topics are given in the editorials.
;
