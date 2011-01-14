
(defrule mouth0
(declare (salience 5000))
(id-root ?id mouth)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mouthed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id muzhavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mouth.clp  	mouth0   "  ?id "  muzhavAlA )" crlf))
)

;"mouthed","Adj","1.muzhavAlA"
;While mouth-mouthed he was looking as a crow trying to eat its food.
;
(defrule mouth1
(declare (salience 4900))
(id-root ?id mouth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muzha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mouth.clp 	mouth1   "  ?id "  muzha )" crlf))
)

;default_sense && category=noun	muzha	0
;"mouth","N","1.muzha"
;Mouth is a important organ  among the body parts.
;--"2.muhAnA"
;We stood at the mouth of the cave.
;
;