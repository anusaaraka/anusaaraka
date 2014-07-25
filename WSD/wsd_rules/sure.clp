;@@@ Added by jagriti(8.2.2014)
;He is a sure messenger.[iit-bombay wordnet]
;वह एक विश्वसनीय सन्देशवाहक है . 
(defrule sure0
(declare (salience 5000))
(id-root ?id sure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvaswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sure.clp      sure0   "  ?id "  viSvaswa )" crlf)
))

;Added by Meena(6.3.10)
;I am not sure that the results are biochemically valid . 
(defrule sure1
(declare (salience 4000))
(id-root ?id sure)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sure.clp      sure1   "  ?id "  niSciwa )" crlf)
)
)
;....default rule....
;@@@ Added by jagriti(8.2.2014)
(defrule sure2
(declare (salience 100))
(id-root ?id sure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sure.clp      sure2   "  ?id "  niSciwa )" crlf)
)
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sure0
(declare (salience 5000))
(id-root ?id sure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvaswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sure.clp   sub_samA_sure0   "   ?id " viSvaswa )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sure0
(declare (salience 5000))
(id-root ?id sure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvaswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sure.clp   obj_samA_sure0   "   ?id " viSvaswa )" crlf)
))
