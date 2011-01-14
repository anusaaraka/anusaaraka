
(defrule spy0
(declare (salience 5000))
(id-root ?id spy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAsUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spy.clp 	spy0   "  ?id "  jAsUsa )" crlf))
)

;"spy","N","1.jAsUsa/gupwacara"
;She was a German spy during world war II.
;
(defrule spy1
(declare (salience 4900))
(id-root ?id spy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAsUsI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spy.clp 	spy1   "  ?id "  jAsUsI_kara )" crlf))
)

;"spy","V","1.jAsUsI_karanA"
;He was hired to spy on the president.
;--"2.XyAna_raKanA"
;I spied on the old man walking down the street.
;
