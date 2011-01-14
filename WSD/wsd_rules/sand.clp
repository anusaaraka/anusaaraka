
(defrule sand0
(declare (salience 5000))
(id-root ?id sand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sanding )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id rewa_CidZaka_yA_ragadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sand.clp  	sand0   "  ?id "  rewa_CidZaka_yA_ragadZa )" crlf))
)

;"sanding","V","1.rewa_CidZaka_yA_ragadZa"
(defrule sand1
(declare (salience 4900))
(id-root ?id sand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sand.clp 	sand1   "  ?id "  rewa )" crlf))
)

;"sand","N","1.rewa/sikawA"
;Mix sand && cement to make concrete.
;--"2.bAlU-wata"
;The children are playing on the sands.
;
;
