
(defrule pawn0
(declare (salience 5000))
(id-root ?id pawn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExala_moharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pawn.clp 	pawn0   "  ?id "  pExala_moharA )" crlf))
)

;"pawn","N","1.pExala_moharA"
;A pawn can be moved only straight.
;--"2.kaTapuwalI"
;He is just a pawn in their struggle for power.
;--"3.banXaka"
;The terrorists made them all pawns.
;
(defrule pawn1
(declare (salience 4900))
(id-root ?id pawn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id giravI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pawn.clp 	pawn1   "  ?id "  giravI_raKa )" crlf))
)

;"pawn","VT","1.giravI_raKanA"
;He pawned his gold watch to pay his rent.
;--"2.xAzva_para_lagAnA"
;He pawned his life for the sake of loyalty.
;
