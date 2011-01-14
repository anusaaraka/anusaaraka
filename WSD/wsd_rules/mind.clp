
(defrule mind0
(declare (salience 5000))
(id-root ?id mind)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id minded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ximAga_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mind.clp  	mind0   "  ?id "  ximAga_vAlA )" crlf))
)

;"minded","Adj","1.ximAga vAlA"
;He is a keen minded person.
;
;Added by human beings
(defrule mind1
(declare (salience 4900))
(id-root ?id mind)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 make )
(viSeRya-up_viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mind.clp 	mind1   "  ?id "  - )" crlf))
)

; he made up his mind to tell a story.
(defrule mind2
(declare (salience 4800))
(id-root ?id mind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mind.clp 	mind2   "  ?id "  mana )" crlf))
)

(defrule mind3
(declare (salience 4700))
(id-root ?id mind)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Apawwi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mind.clp 	mind3   "  ?id "  Apawwi_kara )" crlf))
)

(defrule mind4
(declare (salience 4600))
(id-root ?id mind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Apawwi_ho))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mind.clp 	mind4   "  ?id "  Apawwi_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  mind.clp      mind4   "  ?id " ko  )" crlf))
)

;"mind","V","1.Apawwi_honA[karanA]"
;He does not mind the noise.
;He does not mind if I borrow his books.
;I do not mind him smoking occasionally.
;--"2.XyAna_xenA"
;Mind your language.
;Don't mind his rudeness.
;Would you mind the baby for an hour.
;
;
