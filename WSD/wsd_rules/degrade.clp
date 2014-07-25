
(defrule degrade0
(declare (salience 5000))
(id-root ?id degrade)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id degrading )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nyUna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  degrade.clp  	degrade0   "  ?id "  nyUna )" crlf))
)

;"degrading","Adj","1.nyUna"
;Prisoners have to face a degrading treatment.
;

;He was degraded from his post.         ;sentence of this file
;उसे उसके पद से पदावनत कर दिया गया.
;@@@ added by Pramila(BU) on 05-12-2013
(defrule degrade1
(declare (salience 4900))
(id-root ?id degrade)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(kriyA-from_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxAvanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degrade.clp 	degrade1   "  ?id "  paxAvanawa_kara )" crlf))
)

;This poster is offensive and degrades women.      ;oald
;यह पोस्टर अपमानजनक है और औरतों का अपमान करता है
;@@@ added by Pramila(BU) on 05-12-2013
(defrule degrade2
(declare (salience 5000))
(id-root ?id degrade)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apamAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degrade.clp 	degrade2   "  ?id "  apamAna_kara )" crlf))
)


;@@@ added by Pramila(BU) on 05-12-2013
;These chemicals quickly degrade into harmless compounds.   ;oald
;ये रसायन शीघ्र हानिकारक यौगिकों में बदल जाते हैं.
(defrule degrade3
(declare (salience 4900))
(id-root ?id degrade)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degrade.clp 	degrade3   "  ?id "  baxala_jA )" crlf))
)


(defrule degrade4
(declare (salience 4000))
(id-root ?id degrade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apakaRINa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degrade.clp 	degrade4   "  ?id "  apakaRINa_kara )" crlf))
)

;default_sense && category=verb	paxAvanawa kara	0
;"degrade","V","1.paxAvanawa karanA"
;He was degraded from his post.
;--"2.naRta honA"
;The plastic can not be degraded.
;
;
