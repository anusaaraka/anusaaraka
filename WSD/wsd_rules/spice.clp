
(defrule spice0
(declare (salience 5000))
(id-root ?id spice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id masAle))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spice.clp 	spice0   "  ?id "  masAle )" crlf))
)

;"spice","N","1.masAle"
;Ginger, pepper etc. are among common spices.
;--"2.uwsAha_yA_uwsukawA"
;One should add a bit spice in his life.
;
(defrule spice1
(declare (salience 4900))
(id-root ?id spice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_naI_cIjZa_milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spice.clp 	spice1   "  ?id "  kuCa_naI_cIjZa_milA )" crlf))
)

;"spice","V","1.kuCa_naI_cIjZa_milAnA"
;Currently released movies of English are spiced with dark humour.
;
