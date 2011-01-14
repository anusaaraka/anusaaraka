
(defrule impersonal0
(declare (salience 5000))
(id-root ?id impersonal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id a-vEyakwika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impersonal.clp 	impersonal0   "  ?id "  a-vEyakwika )" crlf))
)

(defrule impersonal1
(declare (salience 4900))
(id-root ?id impersonal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirapekRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impersonal.clp 	impersonal1   "  ?id "  nirapekRa )" crlf))
)

;"impersonal","Adj","1.nirapekRa"
;Lets keep the discussion impersonal so as not to en bored] anyone.
;
;
