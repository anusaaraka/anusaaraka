
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

;"listen","V","1.sunanA"
;Please speak a bit loudly. I am not able to listen anything.
;Why don' you listen to me?
;
;