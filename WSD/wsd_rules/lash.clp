
(defrule lash0
(declare (salience 5000))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lashing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kode_lagAne_kI_prakriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lash.clp  	lash0   "  ?id "  kode_lagAne_kI_prakriyA )" crlf))
)

;"lashing","N","1.kode lagAne kI prakriyA"
;--"2.bAMXane kI rassI"
;
;
(defrule lash1
(declare (salience 4900))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lash.clp	lash1  "  ?id "  " ?id1 "  prahAra_kara  )" crlf))
)

;The lion suddenly lashed out && killed the deer.
;Sera ne acAnaka prahAra kiyA Ora hiraNa ko mAra girAyA
(defrule lash2
(declare (salience 4800))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lash.clp 	lash2   "  ?id "  kodA )" crlf))
)

;"lash","N","1.kodA"
;He used a lash to east him. He was given twenty lashes.
;--"2.barOnI"
;Eye-lashes
;
(defrule lash3
(declare (salience 4700))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kode_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lash.clp 	lash3   "  ?id "  kode_lagA )" crlf))
)

;"lash","V","1.kode_lagAnA"
;Slaves were commonly lashed in olden times.
;--"2.SIGrawA_se_hilAnA"
;The angny tiger is lashing its tail.
;--"3.kasakara_bAzXanA"
;Lash the patient securely to the strecture.
;--"4.se_takarAnA"
;Sea waves were lashing the coast.
;--"5.PatakAranA"
;He was lashed for his misdemeanour by his loss.
;--"6.acAnaka_AkramaNa_karanA"
;The horse lashed at with its hind legs.
;
