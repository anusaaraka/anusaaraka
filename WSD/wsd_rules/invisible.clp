
(defrule invisible0
(declare (salience 5000))
(id-root ?id invisible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axqSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invisible.clp 	invisible0   "  ?id "  axqSya )" crlf))
)

(defrule invisible1
(declare (salience 4900))
(id-root ?id invisible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axqSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invisible.clp 	invisible1   "  ?id "  axqSya )" crlf))
)

;"invisible","Adj","1.axqSya"
;The moon was invisible in the sky.
;--"2.aprakata"
;
;
