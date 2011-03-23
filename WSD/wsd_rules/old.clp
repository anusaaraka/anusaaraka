

;Added by Meena(18.3.11)
;He was imprisoned in 1945 for the brutal murder of a sixty year old woman. 
(defrule old_kA
(declare (salience 5000))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(or(samAsa ?id1 ?id)(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(or(samAsa =(- ?id 1)  =(- ?id 2))(viSeRya-viSeRaNa   =(+ ?id 1)  ?id2)(viSeRya-saMKyA_viSeRaNa  =(- ?id 1)  =(- ?id 2)))
(id-root ?id1 man|woman|girl|boy|baby|father|mother|brother|sister|son|daughter) ; we should make a list of human and human relationships and put it in the database
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  old.clp       old_kA   "  ?id "  kA )" crlf))
)



;Added by Meena(17.3.11)
;These cuts in services will particularly affect the old.
(defrule old0
(declare (salience 4900))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) the)
(not(id-cat_coarse =(+ ?id 1) noun))
(viSeRya-det_viSeRaNa ?id =(- ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXa))
(assert (id-wsd_number ?id p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp      old0   "  ?id "  vqxXa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  old.clp      old0   "  ?id "  p )" crlf))
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


;Added by Meena(22.3.11)
;The old man had to walk a long way to catch the bus.
(defrule old3
(declare (salience 5000))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(or (samAsa ?id1 ?id)(viSeRya-viSeRaNa =(+ ?id 1) ?id))
(id-root ?id1 man|woman|people|population|couple|crocodile)
(viSeRya-det_viSeRaNa =(+ ?id 1) =(- ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp       old3   "  ?id "  vqxXa )" crlf))
)



;She was wearing an old dress.
(defrule old4
(declare (salience 0))
;(declare (salience 4400))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id purAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp 	old4   "  ?id "  purAnA )" crlf))
)

;"old","Adj","1.purAnA"
;She was wearing an old dress.
;--"2.vqxXa"
;The old man had to walk a long way to catch the bus.
;
;
