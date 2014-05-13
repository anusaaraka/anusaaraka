
;Added by Meena(19.4.11)
;He hopes to improve the newspaper's somewhat tarnished public image. 
(defrule tarnish0
(declare (salience 5000))
(id-root ?id tarnish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tarnished)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 public|image|reputation|opinion)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bigadI_huI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  tarnish.clp   tarnish0   "  ?id "  bigadI_huI )" crlf))
)




;Added by Meena(19.4.11)
;He polished the metal to remove the tarnish. 
(defrule tarnish1
(declare (salience 0))
(id-root ?id tarnish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malinawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tarnish.clp 	tarnish1   "  ?id "  malinawA )" crlf))
)





;Added by Meena(23.4.11)
;By this time a series of scandals had severely tarnished the leader's image. 
(defrule tarnish2
(declare (salience 4900))
(id-root ?id tarnish)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?subj)
(kriyA-object ?id ?id1)
;(test(neq ?id1 ?subj))
(id-root ?id1 image|reputation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalaMkiwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tarnish.clp   tarnish2   "  ?id "  kalaMkiwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  tarnish.clp     tarnish2   "  ?id " ko )" crlf)
)
)



;Added by Meena(19.4.11)
;His reputation was tarnished by his misdeeds .
;Her reputation was tarnished after the affair with a married man.
(defrule tarnish3
(declare (salience 4800))
(id-root ?id tarnish)
?mng <-(meaning_to_be_decided ?id)
;(or(kriyA-by_saMbanXI  ?id ?id2)(kriyA-after_saMbanXI  ?id ?id2))
(id-root ?id1 image|reputation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalaMkiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tarnish.clp   tarnish3   "  ?id "  kalaMkiwa_ho )" crlf))
)



;Salience reduced by Meena(21.1.11)
;The silver was tarnished by the long exposure to the air.
(defrule tarnish4
(declare (salience 0))
(id-root ?id tarnish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUmila_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tarnish.clp 	tarnish4   "  ?id "  Xumila_ho )" crlf))
)






;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_tarnish0
(declare (salience 5000))
(id-root ?id tarnish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tarnished)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 public|image|reputation|opinion)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bigadI_huI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " sub_samA_tarnish0" ?id " bigadI_huI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_tarnish0
(declare (salience 5000))
(id-root ?id tarnish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tarnished)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 public|image|reputation|opinion)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bigadI_huI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " obj_samA_tarnish0" ?id " bigadI_huI )" crlf))
)
