
(defrule debate0
(declare (salience 5000))
(id-root ?id debate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debate.clp 	debate0   "  ?id "  bahasa )" crlf))
)

;"debate","N","1.bahasa/vAxa_vivAxa/vivAxa"
(defrule debate1
(declare (salience 4900))
(id-root ?id debate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAxa_vivAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debate.clp 	debate1   "  ?id "  vAxa_vivAxa_kara )" crlf))
)

;"debate","VT","1.vAxa_vivAxa_karanA/bahasa_karanA"
;We debated the question of abortion
;
