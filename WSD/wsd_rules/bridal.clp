
(defrule bridal0
(declare (salience 5000))
(id-root ?id bridal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xulhana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bridal.clp 	bridal0   "  ?id "  xulhana )" crlf))
)

(defrule bridal1
(declare (salience 4900))
(id-root ?id bridal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vivAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bridal.clp 	bridal1   "  ?id "  vivAha )" crlf))
)

;"bridal","N","1.vivAha/vivAhowsava"
;
;
