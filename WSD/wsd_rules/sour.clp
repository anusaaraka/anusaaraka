

;@@@ Added by jagriti(13.2.2014)
;The boy is very sour.[rajpal]
(defrule sour2
(declare (salience 5000))
(id-root ?id sour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(or(id-root ?id1 behaviour|nature)(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cidZacidZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sour.clp 	sour2   "  ?id "  cidZcidZA )" crlf))
)

;@@@ Added by jagriti(13.2.2014)
;His nature has soured.[rajpal]
;उसका स्वभाव चिडचिड़ा हो गया है . 
(defrule sour4
(declare (salience 5000))
(id-root ?id sour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(or(id-root ?id1 behaviour|nature)(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str))))

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cidZacidZA_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sour.clp 	sour4   "  ?id "  cidZacidZA_ho_jA )" crlf))
)
;.....default rule...
;@@@ added by jagriti(13.2.2014)
;The milk has soured.[rajpal]
;दूध खट्टा हो गया है . 
(defrule sour5
(declare (salience 100))
(id-root ?id sour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KattA_ho_jA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sour.clp 	sour5   "  ?id "  KattA_ho_jA )" crlf))
)

(defrule sour0
(declare (salience 100))
(id-root ?id sour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sour.clp 	sour0   "  ?id "  KattA )" crlf))
)


(defrule sour1
(declare (salience 100))
(id-root ?id sour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sour.clp 	sour1   "  ?id "  KattA )" crlf))
)

;"sour","Adj","1.KattA"
;Milk becomes sour when turned into curd.
;--"baxmajZA"
;He was sour over the incident.
;
;
