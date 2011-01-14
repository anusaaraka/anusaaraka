
(defrule assail0
(declare (salience 5000))
(id-root ?id assail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bOCAra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assail.clp 	assail0   "  ?id "  bOCAra_ho )" crlf))
)

(defrule assail1
(declare (salience 4900))
(id-root ?id assail)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bOCAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assail.clp 	assail1   "  ?id "  bOCAra_kara )" crlf))
)

;"assail","V","1.bOCAra_honA[karanA]"
;The minister was assailed with questions in the press conference.
;--"2.tUta_padanA"
;The army assailed on the enemy .
;The army assailed the enemy in retaliation to the bombing.
;
