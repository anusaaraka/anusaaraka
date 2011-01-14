
(defrule pet0
(declare (salience 5000))
(id-root ?id pet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlawU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pet.clp 	pet0   "  ?id "  pAlawU )" crlf))
)

;"pet","Adj","1.pAlawU"
;I have got a pet dog.
;--"2.priya"
;
(defrule pet1
(declare (salience 4900))
(id-root ?id pet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlawU_jAnavara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pet.clp 	pet1   "  ?id "  pAlawU_jAnavara )" crlf))
)

;"pet","N","1.pAlawU_jAnavara"
;I have got a pet.
;--"2.premapAwra"
;
(defrule pet2
(declare (salience 4800))
(id-root ?id pet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xulAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pet.clp 	pet2   "  ?id "  xulAra )" crlf))
)

;"pet","V","1.xulAranA"
;Ram pets his little dog.
;
