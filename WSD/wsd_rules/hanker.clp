
(defrule hanker0
(declare (salience 5000))
(id-root ?id hanker)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hankering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id lalaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hanker.clp  	hanker0   "  ?id "  lalaka )" crlf))
)

;"hankering","N","lalaka"
;usakI evaresta para caDZane kI"hankering"pUrI nahIM huI.
;
;
(defrule hanker1
(declare (salience 4900))
(id-root ?id hanker)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hanker.clp	hanker1  "  ?id "  " ?id1 "  cAha  )" crlf))
)

;I was hankering for an invitation from her side but she din't call me.
;mEM usakI waraPa se nimaMwraNa cAhawA WA lekina usane muJe nahIM bulAyA
(defrule hanker2
(declare (salience 4800))
(id-root ?id hanker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAlAyiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hanker.clp 	hanker2   "  ?id "  lAlAyiwa_ho )" crlf))
)

;"hanker","V","1.lAlAyiwa honA"
;Ajakala gAvoM ke navayuvaka SaharI jIvana kI ora"hanker"rahawe hEM.
;
;
