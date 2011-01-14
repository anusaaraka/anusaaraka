
(defrule lethal0
(declare (salience 5000))
(id-root ?id lethal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prANa_GAwaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lethal.clp 	lethal0   "  ?id "  prANa_GAwaka )" crlf))
)

(defrule lethal1
(declare (salience 4900))
(id-root ?id lethal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAwaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lethal.clp 	lethal1   "  ?id "  GAwaka )" crlf))
)

;"lethal","Adj","1.GAwaka"
;It is a lethal drug.
;--"2.hAnikAraka"
;Death of its leader gave a lethal blow to the movement.
;
;
