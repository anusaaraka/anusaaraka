;Added by Meena(17.9.10)
;I bicycled Johnson Creek.
(defrule bicycle1
(declare (salience 5000))
(id-root ?id bicycle)
?mng<-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(or(proper_noun-waxviSiRta_proper_noun  =(+ ?id 1) =(+ ?id 2))(id-cat_coarse =(+ ?id 1) PropN))
=>
(retract ?mng)
(assert  (id-wsd_root_mng ?id sAikila_para_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng    " ?*wsd_dir* "     bicycle.clp       bicycle1  "  ?id "   sAikila_para_GUma  )" crlf)))



;Added by Meena(17.9.10)
;My dad bicycles to work every day .
(defrule bicycle2
(declare (salience 5000))
(id-root ?id bicycle)
?mng <-(meaning_to_be_decided ?id)
(or(and(kriyA-to_saMbanXI ?id ?id1)
(not(id-cat_coarse ?id1  pronoun)))
 (id-root =(+ ?id 1) home))
=>
(retract ?mng)
(assert  (id-wsd_root_mng ?id sAikila_para_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng    " ?*wsd_dir* "     bicycle.clp       bicycle2  "  ?id "   sAikila_para_jA  )" crlf)))


;Added by Meena(17.9.10)
;I will bicycle the contract over to you this afternoon .
(defrule bicycle3
(declare (salience 5000))
(id-root ?id bicycle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(not(or(id-root =(+ ?id 1) home)(proper_noun-waxviSiRta_proper_noun  =(+ ?id 1) =(+ ?id 2))(id-cat_coarse =(+ ?id 1) PropN)))
=>
(retract ?mng)
(assert  (id-wsd_root_mng ?id sAikila_para_BijavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng    " ?*wsd_dir* "     bicycle.clp       bicycle3  "  ?id "   sAikila_para_BijavA  )" crlf)))
