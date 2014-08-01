
(defrule both0
(declare (salience 5000))
(id-root ?id both)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xonoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  both.clp 	both0   "  ?id "  xono )" crlf))
)

;"both","Conj","1.xono/uBaya"
(defrule both1
(declare (salience 4900))
(id-root ?id both)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xonoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  both.clp 	both1   "  ?id "  xono )" crlf))
)

;"both","Det","1.xono/uBaya"
;Both of his recent books are on poaching.
;
