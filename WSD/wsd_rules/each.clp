
(defrule each0
(declare (salience 5000))
(id-root ?id each)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  each.clp 	each0   "  ?id "  hara )" crlf))
)

;"each","Adv","1.hara"
;The puffs are one rupee each.
;
(defrule each1
(declare (salience 4900))
(id-root ?id each)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyeka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  each.clp 	each1   "  ?id "  prawyeka )" crlf))
)

;"each","Det","1.prawyeka"
;Place a table in each corner of the room.
;
(defrule each2
(declare (salience 4800))
(id-root ?id each)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyeka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  each.clp 	each2   "  ?id "  prawyeka )" crlf))
)

;"each","Pron","1.prawyeka"
;Each is for himself.
;
