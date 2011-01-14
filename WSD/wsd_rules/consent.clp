
(defrule consent0
(declare (salience 5000))
(id-root ?id consent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consent.clp 	consent0   "  ?id "  anumawi )" crlf))
)

(defrule consent1
(declare (salience 4900))
(id-root ?id consent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consent.clp 	consent1   "  ?id "  mAna )" crlf))
)

;"consent","VT","1.mAnanA"
;My parents consented with my desire to marry the man of my choice.
;
;