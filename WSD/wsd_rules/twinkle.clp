
(defrule twinkle0
(declare (salience 5000))
(id-root ?id twinkle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id twinkling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pala_Bara_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  twinkle.clp  	twinkle0   "  ?id "  pala_Bara_meM )" crlf))
)

;"twinkling","N","1.pala_Bara_meM"
;Everything was set in a twinkling.
;
(defrule twinkle1
(declare (salience 4900))
(id-root ?id twinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twinkle.clp 	twinkle1   "  ?id "  camaka )" crlf))
)

;"twinkle","N","1.camaka"
;There was twinkle in her eyes when she saw her mother.
;--"2.JilamilAhata"
;We could see the twinkle of the street lights.
;
(defrule twinkle2
(declare (salience 4800))
(id-root ?id twinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twinkle.clp 	twinkle2   "  ?id "  camaka )" crlf))
)

;"twinkle","VI","1.camakanA"
;Rashtrapati Bhavan twinkled after the parade.
;--"2.AzKa_micakanA"
;He twinkled at her.
;
