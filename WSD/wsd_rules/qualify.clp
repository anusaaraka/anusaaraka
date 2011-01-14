
(defrule qualify0
(declare (salience 5000))
(id-root ?id qualify)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id qualified )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yogyawA_prApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  qualify.clp  	qualify0   "  ?id "  yogyawA_prApwa )" crlf))
)

(defrule qualify1
(declare (salience 4900))
(id-root ?id qualify)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id qualified )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yogyawA_prApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  qualify.clp  	qualify1   "  ?id "  yogyawA_prApwa )" crlf))
)

;"qualified","Adj","1.yogyawA_prApwa"
;Many qualified applicants applied for the job.
;--"2.parimiwa
;They gave only qualified approval to the plan.
;
;
(defrule qualify2
(declare (salience 4800))
(id-root ?id qualify)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogya_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  qualify.clp 	qualify2   "  ?id "  yogya_banA )" crlf))
)

(defrule qualify3
(declare (salience 4700))
(id-root ?id qualify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogya_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  qualify.clp 	qualify3   "  ?id "  yogya_bana )" crlf))
)

;"qualify","VTI","1.yogya_bananA[banAnA]"
;Our cricket team  was qualified for the semi-finals.
;--"2.viSeRaNa_lagAnA"
;Qualify these remarks.
;
