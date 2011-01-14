
(defrule fog0
(declare (salience 5000))
(id-root ?id fog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fog.clp 	fog0   "  ?id "  koharA )" crlf))
)

;"fog","N","1.koharA"
;In dense fog driving is dangerous as visibility is very poor.
;
(defrule fog1
(declare (salience 4900))
(id-root ?id fog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kohare_se_Gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fog.clp 	fog1   "  ?id "  kohare_se_Gira )" crlf))
)

;"fog","V","1.kohare_se_GiranA"
;All my books have been fogged over due to excessive steam in this room.
;--"2.Brama_pExA_honA"
;This is a difficult puzzle, I am fogged over by this. 
;I am fogged by your instructions.
;
