
(defrule prominent0
(declare (salience 5000))
(id-root ?id prominent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahawwvaSAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prominent.clp 	prominent0   "  ?id "  mahawwvaSAlI )" crlf))
)

(defrule prominent1
(declare (salience 4900))
(id-root ?id prominent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramuKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prominent.clp 	prominent1   "  ?id "  pramuKa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 24-1-2014
;A prominent nose. [OALD]
;एक उभरी हुई नाक .
(defrule prominent2
(declare (salience 5000))
(id-root ?id prominent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 nose|cheekbone|bone|chin)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uBarI_huI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prominent.clp 	prominent2   "  ?id "  uBarI_huI )" crlf))
)

;"prominent","Adj","1.pramuKa"
;Ram always plays a prominent role in stage programmes.
;--"2.suspaRta"
;The prominent development of the country is based on the ruling government.
;--"3.uxagra"
;The dentist corrected the prominent teeth of the patient.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_prominent2
(declare (salience 5000))
(id-root ?id prominent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 nose|cheekbone|bone|chin)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uBarI_huI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " prominent.clp   sub_samA_prominent2   "   ?id " uBarI_huI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_prominent2
(declare (salience 5000))
(id-root ?id prominent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 nose|cheekbone|bone|chin)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uBarI_huI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " prominent.clp   obj_samA_prominent2   "   ?id " uBarI_huI )" crlf))
)
