
(defrule poison0
(declare (salience 5000))
(id-root ?id poison)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id poisoning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id viRAkwIkaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  poison.clp  	poison0   "  ?id "  viRAkwIkaraNa )" crlf))
)

;"poisoning","N","1.viRAkwIkaraNa"
;He died due to food poisoning.
;
(defrule poison1
(declare (salience 4900))
(id-root ?id poison)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poison.clp 	poison1   "  ?id "  viRa )" crlf))
)

;"poison","N","1.viRa"
;Potassium cyanide is a very strong poison.
;--"2.xURiwa_AhAra"
;I won't eat that poison.
;
(defrule poison2
(declare (salience 4800))
(id-root ?id poison)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viRa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poison.clp 	poison2   "  ?id "  viRa_xe )" crlf))
)

;"poison","V","1.viRa_xenA"
;His so called friend poisoned him.
;--"2.xURiwa_kara_xenA"
;The chemical companies are poisoning our rivers && atmosphere. 
;--"3.bigAdanA"
;Don't poison his mind.
;
