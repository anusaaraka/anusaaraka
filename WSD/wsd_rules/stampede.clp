
(defrule stampede0
(declare (salience 5000))
(id-root ?id stampede)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BagaxadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stampede.clp 	stampede0   "  ?id "  BagaxadZa )" crlf))
)

;"stampede","N","1.BagaxadZa"
;A suden explosion lead to stampede.
;
(defrule stampede1
(declare (salience 4900))
(id-root ?id stampede)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stampede.clp 	stampede1   "  ?id "  BAga )" crlf))
)

;"stampede","V","1.BAganA"
;Due to fear of lion cattle stampeded towards the village.
;--"2.binA_soce_samaJe_kArya_karanA"
;Don't be stampeded into buying a car.
;
