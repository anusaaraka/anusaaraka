
(defrule device0
(declare (salience 5000))
(id-root ?id device)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 mechanical)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upakaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  device.clp 	device0   "  ?id "  upakaraNa )" crlf))
)

(defrule device1
(declare (salience 4900))
(id-root ?id device)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upakaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  device.clp 	device1   "  ?id "  upakaraNa )" crlf))
)

;default_sense && category=noun	upakaraNa	0
;"device","N","1.upakaraNa"
;India has developed its own nuclear device.
;--"2.leKana_SElI"
;The poet e e cummings has a distinct stylistic device of poetry.
;
;