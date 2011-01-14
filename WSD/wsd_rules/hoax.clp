
(defrule hoax0
(declare (salience 5000))
(id-root ?id hoax)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAzsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoax.clp 	hoax0   "  ?id "  JAzsA )" crlf))
)

;"hoax","N","1.JAzsA"
;kExI kacaharI jAwe samaya pulisa ko 'hoax'(JAzsA) xekara BAga gayA.
;
(defrule hoax1
(declare (salience 4900))
(id-root ?id hoax)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majAka_ke_wOra_para_JAzsA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoax.clp 	hoax1   "  ?id "  majAka_ke_wOra_para_JAzsA_xe )" crlf))
)

;"hoax","V","1.majAka_ke_wOra_para_JAzsA_xenA"
;vIrU ko usane bagIce meM milane kA kahA kinwu vahAz nahIM kara mila usane use 'hoaxed majAka ke wOra para JAzsA xiyA.
;
