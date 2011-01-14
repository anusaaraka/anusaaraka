
(defrule battle0
(declare (salience 5000))
(id-root ?id battle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  battle.clp 	battle0   "  ?id "  ladZAI )" crlf))
)

;"battle","N","1.ladZAI/yuxXa"
;Tipu Sultan was defeated in the battle of Seringapatnam.
;
(defrule battle1
(declare (salience 4900))
(id-root ?id battle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  battle.clp 	battle1   "  ?id "  ladZa )" crlf))
)

;"battle","VI","1.ladZanA"
;He is battling with life in the hospital.
;
