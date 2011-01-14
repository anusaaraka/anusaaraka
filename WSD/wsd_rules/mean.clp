
(defrule mean0
(declare (salience 5000))
(id-root ?id mean)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) that )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arWa_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mean.clp 	mean0   "  ?id "  arWa_hE )" crlf))
)

(defrule mean1
(declare (salience 4900))
(id-root ?id mean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id means )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sAXana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mean.clp  	mean1   "  ?id "  sAXana )" crlf))
)

;"means","N","1.sAXana"
;The means are more important than the achievements.
;--"2.pEsA
;He does not have the means to support the prifessional education of his children.
;
(defrule mean2
(declare (salience 4800))
(id-root ?id mean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id meaning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id arWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mean.clp  	mean2   "  ?id "  arWa )" crlf))
)

;"meaning","N","1.arWa"
;The meaning of the phrase was not very clear to me.
;
;
;
(defrule mean3
(declare (salience 4700))
(id-root ?id mean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 harm)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzcAne_kA_prayawna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mean.clp 	mean3   "  ?id "  pahuzcAne_kA_prayawna_kara )" crlf))
)

;He does not intend to mean any harm
(defrule mean4
(declare (salience 4600))
(id-root ?id mean)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id infinitive)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id irAxA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mean.clp 	mean4   "  ?id "  irAxA_ho )" crlf))
)

(defrule mean5
(declare (salience 4500))
(id-root ?id mean)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAwparya_ho))
(assert (kriyA_id-subject_viBakwi ?id kA))
(assert (id-H_vib_mng ?id 0))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mean.clp 	mean5   "  ?id "  wAwparya_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  mean.clp      mean5   "  ?id " kA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  mean.clp      mean5   "  ?id " 0 )"  crlf))
)

(defrule mean6
(declare (salience 4400))
(id-root ?id mean)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) that )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arWa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mean.clp 	mean6   "  ?id "  arWa_ho )" crlf))
)

(defrule mean7
(declare (salience 4300))
(id-root ?id mean)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) it )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arWa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mean.clp 	mean7   "  ?id "  arWa_ho )" crlf))
)

(defrule mean8
(declare (salience 4200))
(id-root ?id mean)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arWa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mean.clp 	mean8   "  ?id "  arWa_ho )" crlf))
)

(defrule mean9
(declare (salience 4100))
(id-root ?id mean)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamInA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mean.clp 	mean9   "  ?id "  kamInA )" crlf))
)

;"mean","Adj","1.kamInA"
;He is a very mean person.
;
;
