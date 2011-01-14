
(defrule scent0
(declare (salience 5000))
(id-root ?id scent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ganXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scent.clp 	scent0   "  ?id "  ganXa )" crlf))
)

;"scent","N","1.ganXa"
;That flower has a good scent.
;--"2.awara"
;Put some scent on before going out.
;--"3.Koja"
;Scientists are on the scent of a cure.
;
(defrule scent1
(declare (salience 4900))
(id-root ?id scent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUzGa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scent.clp 	scent1   "  ?id "  sUzGa )" crlf))
)

;"scent","V","1.sUzGanA"
;The cat scented the fish.
;--"2.BAzpanA"
;The detective scented the victim on the spot.
;--"3.suganXiwa_karanA"
;She gave me a bunch of beautiful roses that scented the air.
;
