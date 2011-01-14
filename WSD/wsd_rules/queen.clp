
(defrule queen0
(declare (salience 5000))
(id-root ?id queen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  queen.clp 	queen0   "  ?id "  rAnI )" crlf))
)

;"queen","N","1.rAnI"
;Elizabeth became the queen of England after the death of King George.
;--"2.SawaraMja_kA_vajIra"
;Queen is a powerful piece in the game of chess.
;
(defrule queen1
(declare (salience 4900))
(id-root ?id queen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vajIra_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  queen.clp 	queen1   "  ?id "  vajIra_cala )" crlf))
)

;"queen","VT","1.vajIra_calanA"
;Queen a pawn. 
;--"2.rAnI_jEsA_vyavahAra_karanA"
;She queens the Company.
;
