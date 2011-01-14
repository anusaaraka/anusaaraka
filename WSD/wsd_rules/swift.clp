
(defrule swift0
(declare (salience 5000))
(id-root ?id swift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wurawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swift.clp 	swift0   "  ?id "  wurawa )" crlf))
)

;"swift","Adj","1.wurawa/wejZa"
;He gave a swift response to my question.
;
(defrule swift1
(declare (salience 4900))
(id-root ?id swift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swift.clp 	swift1   "  ?id "  bawAsI )" crlf))
)

;"swift","N","1.bawAsI{eka_pakRI}"
;Swift can fly with rapid curving movements.
;
