
(defrule wrinkle0
(declare (salience 5000))
(id-root ?id wrinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JurrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrinkle.clp 	wrinkle0   "  ?id "  JurrI )" crlf))
)

;"wrinkle","N","1.JurrI"
;The wrinkles on her face are not visible.
;--"2.[anOpacArika]lABaxAyaka_suJAva"
;This book will give you some wrinkles for your interview.
;
(defrule wrinkle1
(declare (salience 4900))
(id-root ?id wrinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikuda_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrinkle.clp 	wrinkle1   "  ?id "  sikuda_jA )" crlf))
)

;"wrinkle","VT","1.sikuda_jAnA"
;She wrinkled her forehead in anger.
;--"2.Sikana_padZanA[dAlanA]"
;The skirt was wrinkled due to haphazard foldings.
;
