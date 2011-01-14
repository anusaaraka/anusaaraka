
(defrule hit0
(declare (salience 5000))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hit.clp	hit0  "  ?id "  " ?id1 "  AlocanA_kara  )" crlf))
)

;He always hit back at those who oppose him.
;vaha hameSAM unakI AlocanA karawA hE jo usakA viroXa karawe hEM
(defrule hit1
(declare (salience 4900))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hit.clp	hit1  "  ?id "  " ?id1 "  mila_jA  )" crlf))
)

;We've hit on the solution at last.
;AKirakAra hameM hala mila gayA hE
(defrule hit2
(declare (salience 4800))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hit.clp	hit2  "  ?id "  " ?id1 "  AlocanA_kara  )" crlf))
)

;He always hit out at those who oppose him.
;vaha hameSAM unakI AlocanA karawA hE jo usakA viroXa karawe hEM
(defrule hit3
(declare (salience 4700))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AGAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit3   "  ?id "  AGAwa )" crlf))
)

;"hit","N","1.AGAwa/saPala"
;bArdara eka 'hit'(saPala) Pilma ho cukI hE.
;
(defrule hit4
(declare (salience 4600))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prahAra_kara))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit4   "  ?id "  prahAra_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  hit.clp       hit4   "  ?id " para )" crlf)
)
)

;"hit","V","1.prahAra_karanA"
;usane apanI lATI se usake sira para 'hit' (prahAra) kiyA.
;
