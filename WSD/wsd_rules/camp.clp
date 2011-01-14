
(defrule camp0
(declare (salience 5000))
(id-root ?id camp)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 _surround)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sivira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  camp.clp 	camp0   "  ?id "  Sivira )" crlf))
)





;Added by Meena(18.01.10)
;The missiles were zeroed in on the enemy camps .
(defrule camp1
(declare (salience 4900))
(id-root ?id camp)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) enemy)
;(id-root ?id1 ?)
(or (samAsa ?id =(- ?id 1))(viSeRya-viSeRaNa  ?id =(- ?id 1)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1)  Sawru_Sivira ));Interchanged affecting_id-affected_id informtion by Mahalaxmi (25-03-10)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " camp.clp  camp1  "  ?id "  " =(- ?id 1) " Sawru_Sivira  )" crlf))
)




;Salience reduced by Meena(18.01.10)
(defrule camp2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id camp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sivira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  camp.clp 	camp2   "  ?id "  Sivira )" crlf))
)





(defrule camp3
(declare (salience 4800))
(id-root ?id camp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id padZAva_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  camp.clp 	camp3   "  ?id "  padZAva_dAla )" crlf))
)

;"camp","V","1.padZAva_dAlanA"
;We camped on Nilgiri hills during summer.
;
;
