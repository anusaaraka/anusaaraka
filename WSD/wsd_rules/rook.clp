
(defrule rook0
(declare (salience 5000))
(id-root ?id rook)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOvA_jEsA_pakRI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rook.clp 	rook0   "  ?id "  kOvA_jEsA_pakRI )" crlf))
)

;"rook","N","1.kOvA_jEsA_pakRI"
;Rooks have build their nests in our garden.
;
(defrule rook1
(declare (salience 4900))
(id-root ?id rook)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Taga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rook.clp 	rook1   "  ?id "  Taga )" crlf))
)

;"rook","VTI","1.TaganA"
;The shopkeeper rooked us by charging high prices  for every item.
;
