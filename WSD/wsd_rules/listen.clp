
(defrule listen0
(declare (salience 5000))
(id-root ?id listen)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 corI-Cupe_suna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " listen.clp	listen0  "  ?id "  " ?id1 "  corI-Cupe_suna  )" crlf))
)

;I am sure that somebody is listening in our conversation.
;muJe yakZIna hE ki koI hamArI bAwoM ko corI-Cipe suna rahA hE
(defrule listen1
(declare (salience 4900))
(id-root ?id listen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  listen.clp 	listen1   "  ?id "  suna )" crlf))
)

;@@@--- Added by Nandini(1-5-14)
;None of this would have happened if you'd listened to me.[OLAD]
;yaha kuCa BI nahIM huA howA yaxi Apa muJe XyAna_se suneMge.
(defrule listen2
(declare (salience 4950))
(id-root ?id listen)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna_se_suna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  listen.clp 	listen2   "  ?id "  XyAna_se_suna )" crlf))
)

;@@@--- Added by Nandini(1-5-14)
;Can you listen out for the doorbell? [OLAD]
;kyA Apa xvAraGaNtI ke AvAja_para_kAna_xe sakawe hEM?
(defrule listen3
(declare (salience 5000))
(id-root ?id listen)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AvAja_para_kAna_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " listen.clp	listen3  "  ?id "  " ?id1 "  AvAja_para_kAna_xe  )" crlf))
)


;"listen","V","1.sunanA"
;Please speak a bit loudly. I am not able to listen anything.
;Why don' you listen to me?
;(kriyA-to_saMbanXI  10 12)
;
