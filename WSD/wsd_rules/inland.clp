
(defrule inland0
(declare (salience 5000))
(id-root ?id inland)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwarxeSIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inland.clp 	inland0   "  ?id "  anwarxeSIya )" crlf))
)

;"inland","Adj","1.anwarxeSIya"
;He posted an inland letter.
;
(defrule inland1
(declare (salience 4900))
(id-root ?id inland)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeSa_ke_anxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inland.clp 	inland1   "  ?id "  xeSa_ke_anxara )" crlf))
)

;"inland","N","1.xeSa_ke_anxara"
;Tight security was imposed inland.
;
