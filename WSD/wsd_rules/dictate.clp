
(defrule dictate0
(declare (salience 5000))
(id-root ?id dictate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjFA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dictate.clp 	dictate0   "  ?id "  AjFA )" crlf))
)

;"dictate","N","1.AjFA"
;I can't stoop to his dictates.
;
(defrule dictate1
(declare (salience 4900))
(id-root ?id dictate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjFA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dictate.clp 	dictate1   "  ?id "  AjFA_xe )" crlf))
)

;"dictate","VT","1.AjFA_xenA"
;She dictated works to her siblings.
;
