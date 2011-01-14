
(defrule word0
(declare (salience 5000))
(id-root ?id word)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wording )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SabxoM_meM_prakata_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  word.clp  	word0   "  ?id "  SabxoM_meM_prakata_karanA )" crlf))
)

;"wording","N","1.SabxoM_meM_prakata_karanA"
;The wording in the song was not clear.
;
(defrule word1
(declare (salience 4900))
(id-root ?id word)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sabxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  word.clp 	word1   "  ?id "  Sabxa )" crlf))
)

;"word","N","1.Sabxa"
;Write the essay in your own words.
;--"2.kaWana"
;Great people give words of wisdom.
;--"3.vacana"
;I give you my word that this will not happen again.
;
(defrule word2
(declare (salience 4800))
(id-root ?id word)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SabxoM_meM_prakata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  word.clp 	word2   "  ?id "  SabxoM_meM_prakata_kara )" crlf))
)

;"word","VT","1.SabxoM_meM_prakata_karanA"
;I was unable to word my feelings at the Ritu's husband's death.
;
