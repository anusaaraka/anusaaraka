
(defrule object0
(declare (salience 5000))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id objects )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vaswu))
(assert (id-wsd_number ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  object.clp  	object0   "  ?id "  vaswu )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number  " ?*wsd_dir* "  object.clp     object0   "  ?id " s )" crlf))
)

; Added by human beings
(defrule object1
(declare (salience 4900))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 non-living)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object1   "  ?id "  vaswu )" crlf))
)

(defrule object2
(declare (salience 4800))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 living)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object2   "  ?id "  vaswu )" crlf))
)

(defrule object3
(declare (salience 4700))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 dense)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object3   "  ?id "  vaswu )" crlf))
)

(defrule object4
(declare (salience 4600))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object4   "  ?id "  vaswu )" crlf))
)

;default_sense && category=noun	karma	0
(defrule object5
(declare (salience 4500))
(id-root ?id object)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Apawwi_vyakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  object.clp 	object5   "  ?id "  Apawwi_vyakwa_kara )" crlf))
)

;"object","V","1.Apawwi vyakwa karanA"
;I object to his use of indecent language.
;
;
