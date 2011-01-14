
(defrule fizz0
(declare (salience 5000))
(id-root ?id fizz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gEsa_nikalane_kI_PuPakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fizz.clp 	fizz0   "  ?id "  gEsa_nikalane_kI_PuPakAra )" crlf))
)

;"fizz","N","1.gEsa_nikalane_kI_PuPakAra"
;There is a fizz when you open the soda water bottle.
;
(defrule fizz1
(declare (salience 4900))
(id-root ?id fizz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkrAmaka_ruKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fizz.clp 	fizz1   "  ?id "  AkrAmaka_ruKa )" crlf))
)

;"fizz","V","1.AkrAmaka_ruKa"
;The cricket team has lost its fizz.
;
