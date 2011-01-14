
(defrule neglect0
(declare (salience 5000))
(id-root ?id neglect)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id neglected )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id upekRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  neglect.clp  	neglect0   "  ?id "  upekRiwa )" crlf))
)

;"neglected","Adj","1.upekRiwa"
;They are neglected people.



;Salience reduced by Meena(9.12.09)
(defrule neglect1
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id neglect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upekRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neglect.clp 	neglect1   "  ?id "  upekRA )" crlf))
)

;"neglect","N","1.upekRA"
;The case was spoilt due to his neglect.
;The flat is kept in a state of total neglect.




;Added by Meena(9.12.09)
;Do not neglect your duties.
(defrule neglect02
(declare (salience 4800))
(id-root ?id neglect)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upekRA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neglect.clp   neglect2   "  ?id "  upekRA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  neglect.clp      neglect02   "  ?id " kA )" crlf)
)
)



;Salience reduced by Meena(9.12.09)
(defrule neglect2
(declare (salience 0))
;(declare (salience 4800))
(id-root ?id neglect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upekRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neglect.clp 	neglect2   "  ?id "  upekRA_kara )" crlf))
)

;"neglect","V","1.upekRA_karanA"
;Do not neglect your duties.
;
