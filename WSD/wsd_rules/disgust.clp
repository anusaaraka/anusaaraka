
(defrule disgust0
(declare (salience 5000))
(id-root ?id disgust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GqNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disgust.clp 	disgust0   "  ?id "  GqNA )" crlf))
)

;"disgust","N","1.GqNA"
;The very thought of taking exams fills me with disgust.
;
(defrule disgust1
(declare (salience 4900))
(id-root ?id disgust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GqNA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disgust.clp 	disgust1   "  ?id "  GqNA_kara )" crlf))
)

;"disgust","VT","1.GqNA_karanA"
;The very thought of taking exams disgusts me.
;
