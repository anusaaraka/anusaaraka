
(defrule poetic0
(declare (salience 5000))
(id-root ?id poetic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAvyAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poetic.clp 	poetic0   "  ?id "  kAvyAwmaka )" crlf))
)

(defrule poetic1
(declare (salience 4900))
(id-root ?id poetic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAvyAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poetic.clp 	poetic1   "  ?id "  kAvyAwmaka )" crlf))
)

;"poetic","Adj","1.kAvyAwmaka"
;Her poetic compositions are very curious to listen.
;
;
