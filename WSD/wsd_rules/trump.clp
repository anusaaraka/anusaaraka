
(defrule trump0
(declare (salience 5000))
(id-root ?id trump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wurupa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trump.clp 	trump0   "  ?id "  wurupa )" crlf))
)

;"trump","N","1.wurupa"
;He declared hearts as the trump for that game.
;
(defrule trump1
(declare (salience 4900))
(id-root ?id trump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wurupa_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trump.clp 	trump1   "  ?id "  wurupa_cala )" crlf))
)

;"trump","VTI","1.wurupa_calanA"
;She teumped my Ace.
;
