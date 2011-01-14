
(defrule flap0
(declare (salience 5000))
(id-root ?id flap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PlEpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flap.clp 	flap0   "  ?id "  PlEpa )" crlf))
)

;"flap","N","1.PlEpa"
;Flap of his overcoat was trailing on the ground.
;The flap of the curtain was moving with the wind.
;--"2.paMKa{havAI_jahAjZa_ke}"
;Flaps are lowered to reduce the speed of the aircraft.
;--"3.uwwejanA"
;He got in a real flap when he was not considered for promotion.
;
(defrule flap1
(declare (salience 4900))
(id-root ?id flap)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flap.clp 	flap1   "  ?id "  hilA )" crlf))
)

(defrule flap2
(declare (salience 4800))
(id-root ?id flap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flap.clp 	flap2   "  ?id "  hila )" crlf))
)

;"flap","V","1.hilanA[hilAnA]"
;The bird flaaped its wings.
;--"2.halke_se_mAranA"
;Please flap the insect with this book.
;--"3.cinwA_karanA"
;He was quite flapped at his first appearance at the show.
;
