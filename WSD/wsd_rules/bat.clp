
(defrule bat0
(declare (salience 5000))
(id-root ?id bat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ballA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bat.clp 	bat0   "  ?id "  ballA )" crlf))
)

;"bat","N","1.ballA"
;I bought a new bat for my nephew.
;--"2.camagAxadZa"
;Bat is a mammal.
;
(defrule bat1
(declare (salience 4900))
(id-root ?id bat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ballebAjZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bat.clp 	bat1   "  ?id "  ballebAjZI_kara )" crlf))
)

;"bat","V","1.ballebAjZI_karanA"
;Hari was batting when the game had to be abondened because of teh rain.
;
