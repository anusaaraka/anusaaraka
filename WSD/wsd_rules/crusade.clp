
(defrule crusade0
(declare (salience 5000))
(id-root ?id crusade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XarmayuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crusade.clp 	crusade0   "  ?id "  XarmayuxXa )" crlf))
)

;"crusade","N","1.XarmayuxXa"
;In the medieval times the crusade began
;
(defrule crusade1
(declare (salience 4900))
(id-root ?id crusade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XarmayuxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crusade.clp 	crusade1   "  ?id "  XarmayuxXa_kara )" crlf))
)

;"crusade","VT","1.XarmayuxXa_karanA"
;Gandhi crusaded for non-violence
;
