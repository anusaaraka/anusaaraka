
(defrule pledge0
(declare (salience 5000))
(id-root ?id pledge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pledge.clp 	pledge0   "  ?id "  praNa )" crlf))
)

(defrule pledge1
(declare (salience 4900))
(id-root ?id pledge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawijFA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pledge.clp 	pledge1   "  ?id "  prawijFA_kara )" crlf))
)

(defrule pledge2
(declare (salience 4800))
(id-root ?id pledge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawijFA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pledge.clp 	pledge2   "  ?id "  prawijFA_ho )" crlf))
)

;"pledge","V","1.prawijFA_kara[ho]"
;He pledged to fight for his nation's security.
;
;
