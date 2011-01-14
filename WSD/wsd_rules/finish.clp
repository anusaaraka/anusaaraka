
(defrule finish0
(declare (salience 5000))
(id-root ?id finish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id finished )
;(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  finish.clp  	finish0   "  ?id "  pUrNa )" crlf))
)

;"finished","Adj","1.pUrNa"
;Finished job is always the most satisfying.
;--"2.samApwa"
;This is what the finished product looks like.
;
;
(defrule finish1
(declare (salience 4900))
(id-root ?id finish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAra_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " finish.clp	finish1  "  ?id "  " ?id1 "  mAra_dAla  )" crlf))
)

;
;
(defrule finish2
(declare (salience 4800))
(id-root ?id finish)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa ?id ?id1)(viSeRya-det_viSeRaNa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  finish.clp 	finish2   "  ?id "  anwa )" crlf))
)

;"finish","N","1.anwa"
;This race will have an interesting finish.
;
(defrule finish3
(declare (salience 4700))
(id-root ?id finish)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  finish.clp 	finish3   "  ?id "  pUrNa_kara )" crlf))
)

;"finish","V","1.pUrNa_karanA"
;He has been asked to finish this work today.
;--"2.samApwa_karanA"
;Please finish the coffee.
;--"3.mAra_dAlanA"
;He has engaged some persons to finish Shyam.
;
