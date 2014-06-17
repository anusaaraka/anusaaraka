
(defrule eject0
(declare (salience 4900))
(id-root ?id eject)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balapUrvaka_bAhara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eject.clp 	eject0   "  ?id "  balapUrvaka_bAhara_kara )" crlf))
)

;@@@ added by pramila(BU) on 05-12-2013
;So your stainless steel spoon was made from a material which was processed deep inside some star and finally ejected into outer space in 
;a supernova explosion.
;इसलिए स्टेनलैस स्टील का चम्मच उस सामग्री से बना जो किसी तारे के अंदर तैयार हुई और फिर किसी सुपरनोवा विस्फोट में वहां से निकलकर अंतरिक्ष में फेंक दी गयी।
(defrule eject1
(declare (salience 5000))
(id-root ?id eject)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eject.clp 	eject1   "  ?id "  PeMka_xe )" crlf))
)

(defrule eject2
(declare (salience 4000))
(id-root ?id eject)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balapUrvaka_bAhara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eject.clp 	eject2   "  ?id "  balapUrvaka_bAhara_ho )" crlf))
)

;"eject","VT","1.balapUrvaka_bAhara_honA[karanA]"
;He managed to eject from the crashing helicopter.
;
