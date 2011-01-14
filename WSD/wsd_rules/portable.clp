
(defrule portable0
(declare (salience 5000))
(id-root ?id portable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suvAhya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  portable.clp 	portable0   "  ?id "  suvAhya )" crlf))
)

;"portable","Adj","1.suvAhya"
;I like portable chairs as they are easy to carry.
;
(defrule portable1
(declare (salience 4900))
(id-root ?id portable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAhya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  portable.clp 	portable1   "  ?id "  vAhya )" crlf))
)

;"portable","N","1.vAhya"
;I wrote a letter on a small portable.
;
