
(defrule long0
(declare (salience 5000))
(id-root ?id long)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id longing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id lAlasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  long.clp  	long0   "  ?id "  lAlasA )" crlf))
)

;"longing","N","1.lAlasA"
;He died with a longing to see his estranged son.
;



;Modified by Meena(25.9.09),added (kriyA-for_saMbanXI ....) and commented (id-cat_coarse ?id adj...) and (id-cat_coarse =(+ ?id 1)....)
;I did not wait for long.
(defrule long1
(declare (salience 4900))
(id-root ?id long)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adjective )
;(id-cat_coarse =(+ ?id 1) ~noun)
(kriyA-for_saMbanXI ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lambA_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  long.clp 	long1   "  ?id "  lambA_samaya )" crlf))
)





(defrule long2
(declare (salience 4800))
(id-root ?id long)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laMbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  long.clp 	long2   "  ?id "  laMbA )" crlf))
)

;"long","Adj","1.lambA"
;A long stick. A long road. A long poem. A long time.



;Added by  Meena(20.3.10)
;How long will it last ? 
(defrule long3
(declare (salience 4700))
(id-root ?id long)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id1 ?id)
(id-root ?id1 last)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  long.clp      long3   "  ?id "  samaya )" crlf))
)






;Salience reduced by Meena(20.3.10)
(defrule long4
(declare (salience 0))
;(declare (salience 4700))
(id-root ?id long)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lambe_samaya_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  long.clp 	long4   "  ?id "  lambe_samaya_waka )" crlf))
)

;"long","Adv","1.lambe_samaya_waka"
;Stay here as long as you like.
;
(defrule long5
(declare (salience 4800))
(id-root ?id long)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lambA_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  long.clp 	long5   "  ?id "  lambA_samaya )" crlf))
)

;"long","N","1.lambA_samaya"
;It shouldn't take long for you to solve the problem.
;
(defrule long6
(declare (salience 4500))
(id-root ?id long)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id icCA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  long.clp 	long6   "  ?id "  icCA_kara )" crlf))
)

;"long","V","1.icCA_karanA"
;I long to be there for the rest of my life.
;

;@@@ Added by Nandini(1-1-14)
;The milkman's long face grew longer.
(defrule long7
(declare (salience 4850))
(id-root ?id long)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?id1)
(id-root ?kri grow)
(or (subject-subject_samAnAXikaraNa ?id1 ?id) (kriyA-kriyA_viSeRaNa  ?kri ?id))
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika_laMbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  long.clp 	long7   "  ?id "  aXika_laMbA )" crlf))
)
