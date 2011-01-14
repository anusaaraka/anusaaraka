
(defrule classical0
(declare (salience 5000))
(id-root ?id classical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAcIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  classical.clp 	classical0   "  ?id "  prAcIna )" crlf))
)

(defrule classical1
(declare (salience 4900))
(id-root ?id classical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAswrIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  classical.clp 	classical1   "  ?id "  SAswrIya )" crlf))
)

;"classical","Adj","1.SAswrIya"
;Bharatnatyam is a classical dance.
;--"2.prAcIna"
;Many of them criticised the classical Malthusian theory of Population.
;
;
