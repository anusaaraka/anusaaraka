
(defrule incline0
(declare (salience 5000))
(id-root ?id incline)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id inclined )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pravqwwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  incline.clp  	incline0   "  ?id "  pravqwwa )" crlf))
)

;"inclined","Adj","1.pravqwwa"
;I'm inclined to trust him.
;
(defrule incline1
(declare (salience 4900))
(id-root ?id incline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  incline.clp 	incline1   "  ?id "  Juka )" crlf))
)

;default_sense && category=verb	JukanA/JukA	0
;"incline","V","1.JukanA/JukAnA"
;Radha inclined her head in prayer.
;
;
