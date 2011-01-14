
(defrule shape0
(declare (salience 5000))
(id-root ?id shape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Akqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shape.clp 	shape0   "  ?id "  Akqwi )" crlf))
)

; Changed from bAhyAkqwi to Akqwi -- Amba
;"shape","N","1.bAhyAkqwi"
;--"2.AkAra"
;The new building  is in S shape.
;--"3.CAyA"
;I could just see two dim shapes in the gloom.
;--"4.sWiwi"
;What shape is the team in after its defeat?
;
(defrule shape1
(declare (salience 4900))
(id-root ?id shape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkAra_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shape.clp 	shape1   "  ?id "  AkAra_le )" crlf))
)

;"shape","V","1.AkAra_lenA"
;He shaped his career successfully.
;
