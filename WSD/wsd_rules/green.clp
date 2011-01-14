
(defrule green0
(declare (salience 5000))
(id-root ?id green)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  green.clp 	green0   "  ?id "  harA )" crlf))
)

;"green","Adj","1.harA"
;He is wearing a green shirt.
;
(defrule green1
(declare (salience 4900))
(id-root ?id green)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hariyAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  green.clp 	green1   "  ?id "  hariyAlI )" crlf))
)

;"green","N","1.hariyAlI"
;The lawn is green.
;
