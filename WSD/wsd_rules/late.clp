(defrule late2
(declare (salience 150))
(id-root ?id late)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
;(kriyA-kAlavAcI  ? ?id1)
(id-word ?id1 tomorrow|tonight)
;(not(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xera_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  late.clp 	late2   "  ?id "  xera_waka )" crlf))
)

;His late father was a very popular figure in this locality.
(defrule late1
(declare (salience 100))
(id-root ?id late)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xivaMgawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  late.clp 	late1   "  ?id "  xivaMgawa )" crlf))
)

;She is mad at me for being late.
;वह देर होने के liye  मुझपर गुस्सा है .
(defrule late0
(declare (salience 50))
(id-root ?id late)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ? ?id)
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  late.clp 	late0   "  ?id "  xera)" crlf))
)



;---------------remove-rule---------
;(defrule late1
;(declare (salience 4900))
;(id-root ?id late)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id latest)
;=>
;(retract ?mng)
;(assert (id-wsd_word_mng ?id navInawama))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  late.clp  	;late1   "  ?id "  navInawama )" crlf))
;)
