
(defrule foam0
(declare (salience 5000))
(id-root ?id foam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foam.clp 	foam0   "  ?id "  JAga )" crlf))
)

;"foam","N","1.JAga"
;During epileptical attack, lot of foam came out of her mouth.
;--"2.Poma"
;In place of cotton,foam is used to fill matresses to make them soft && long lasting.
;
(defrule foam1
(declare (salience 4900))
(id-root ?id foam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAga_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foam.clp 	foam1   "  ?id "  JAga_nikala )" crlf))
)

;"foam","V","1.JAga_nikalanA"
;This soap foams a lot.
;
