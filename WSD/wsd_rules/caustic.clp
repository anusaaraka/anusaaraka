
(defrule caustic0
(declare (salience 5000))
(id-root ?id caustic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  caustic.clp 	caustic0   "  ?id "  kRAraka )" crlf))
)

(defrule caustic1
(declare (salience 4900))
(id-root ?id caustic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  caustic.clp 	caustic1   "  ?id "  kRAraka )" crlf))
)

;"caustic","Adj","1.kRAraka/xAhaka"
;Soda can be caustic.
;--"2.kaTora"
;He made some caustic remarks at her in the party.
;
;
