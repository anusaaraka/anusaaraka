
(defrule dread0
(declare (salience 5000))
(id-root ?id dread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Baya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dread.clp 	dread0   "  ?id "  Baya )" crlf))
)

;"dread","N","1.Baya/dara"
;The prospect of losing her beauty filled her with dread
;
(defrule dread1
(declare (salience 4900))
(id-root ?id dread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_dara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dread.clp 	dread1   "  ?id "  se_dara )" crlf))
)

;"dread","V","1.se_daranA"
;Mohan dreaded his meeting with his stepfather.
;
