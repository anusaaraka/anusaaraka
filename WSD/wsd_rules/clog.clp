
(defrule clog0
(declare (salience 5000))
(id-root ?id clog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakadZI_ke_cappala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clog.clp 	clog0   "  ?id "  lakadZI_ke_cappala )" crlf))
)

;"clog","N","1.lakadZI_ke_cappala/jUwe"
;Ancient sages used to wear clogs.
;
(defrule clog1
(declare (salience 4900))
(id-root ?id clog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clog.clp 	clog1   "  ?id "  roka )" crlf))
)

;"clog","V","1.rokanA"
;The drainage pipeline was clogged due to heavy rains.
;
