
(defrule blackmail0
(declare (salience 5000))
(id-root ?id blackmail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id blEkamela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blackmail.clp 	blackmail0   "  ?id "  blEkamela )" crlf))
)

;"blackmail","N","1.blEkamela"
(defrule blackmail1
(declare (salience 4900))
(id-root ?id blackmail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id blEkamela_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blackmail.clp 	blackmail1   "  ?id "  blEkamela_kara )" crlf))
)

;"blackmail","V","1.blEkamela_kara"
