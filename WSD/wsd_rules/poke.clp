
(defrule poke0
(declare (salience 5000))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " poke.clp	poke0  "  ?id "  " ?id1 "  DUzDZa  )" crlf))
)

;She was poking around her black saree in my cupboard.
;vaha apanI kAlI sAdZI merI alamArI meM DUzDZa rahI WI
(defrule poke1
(declare (salience 4900))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dakela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poke.clp 	poke1   "  ?id "  Dakela )" crlf))
)

;"poke","V","1.DakelanA"
;While playing children poke each other.
;--"2.Cexa banAnA"
;Drilling machines are used to poke through the wall.
;--"3.cuBonA"
;She poked her finger into the fruit.
;
;