;Added by sheetal(25-02-10)
;Buying of shares was brisk on Wall Street today .
(defrule brisk0
(declare (salience 5000))
(id-root ?id brisk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 share)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brisk.clp     brisk0   "  ?id "  weja )" crlf))
)

