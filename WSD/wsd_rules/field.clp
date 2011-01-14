
(defrule field0
(declare (salience 5000))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field0   "  ?id "  kRewra )" crlf))
)

(defrule field1
(declare (salience 4900))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewrarakRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field1   "  ?id "  kRewrarakRaNa_kara )" crlf))
)

;default_sense && category=verb	kRewra_rakRaNa_kara	0
;"field","V","1.kRewra_rakRaNa_karanA"
;The player fielded the ball with great agility.
;--"2.kRewra_meM_uwAranA{rAjanIwi_ke_saMxarBa_meM}"
;In this election some political parties fielded less number of candidates compared to the last ellections.
;
;