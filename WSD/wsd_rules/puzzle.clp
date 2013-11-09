
(defrule puzzle0
(declare (salience 5000))
(id-root ?id puzzle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUZZzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " puzzle.clp	puzzle0  "  ?id "  " ?id1 "  DUZZzDa  )" crlf))
)

;She managed to puzzle out the solution.
;usane hala ko DUzDZa nikAlA
(defrule puzzle1
(declare (salience 4900))
(id-root ?id puzzle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUZZzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " puzzle.clp	puzzle1  "  ?id "  " ?id1 "  DUZZzDa  )" crlf))
)

;She puzzled over the solution for hours.
;usane GaMtoM waka isa guwWI kA hala DUzzDZA
(defrule puzzle2
(declare (salience 4800))
(id-root ?id puzzle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-over_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_vicAra_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " puzzle.clp puzzle2 " ?id "  para_vicAra_kara )" crlf)) 
)

(defrule puzzle3
(declare (salience 4700))
(id-root ?id puzzle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 para_vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " puzzle.clp	puzzle3  "  ?id "  " ?id1 "  para_vicAra_kara  )" crlf))
)

(defrule puzzle4
(declare (salience 4600))
(id-root ?id puzzle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahelI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puzzle.clp 	puzzle4   "  ?id "  pahelI )" crlf))
)

;default_sense && category=noun	samasyA	0
;"puzzle","N","1.samasyA"
;We spent the whole day solving crossword puzzles.
;
;