;Modified by Meena(17.3.10)by combining the rules 1,2,3 and 4 in old0 and deleted (id-cat ?id adjective|adjective_comparative|adjective_superlative)
(defrule old0
(declare (salience 5000))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 man|queen|people|couple|crocodile)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp 	old0   "  ?id "  vqxXa )" crlf))
)


;Salience reduced by  Meena(17.3.10)
(defrule old1
(declare (salience 0))
;(declare (salience 4500))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id purAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp 	old1   "  ?id "  purAnA )" crlf))
)


;Added by Meena(17.3.10)
;As the Master grew old and infirm, the disciples begged him not to die.
(defrule old2
(declare (salience 4400))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(or(subject-subject_samAnAXikaraNa ?id1 ?id)
   (and(subject-subject_samAnAXikaraNa ?id1 =(+ ?id 1))(conjunction-components  =(+ ?id 1)  ?id  =(+ ?id 2))
   (id-cat_coarse =(+ ?id 2) adjective))
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp       old2   "  ?id "  vqxXa  )" crlf))
)





(defrule old3
(declare (salience 0))
;(declare (salience 4400))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id purAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp 	old3   "  ?id "  purAnA )" crlf))
)

;"old","Adj","1.purAnA"
;She was wearing an old dress.
;--"2.vqxXa"
;The old man had to walk a long way to catch the bus.
;
;
