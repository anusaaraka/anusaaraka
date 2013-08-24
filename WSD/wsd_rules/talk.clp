;salience reduced by Manju(21-08-13)
(defrule talk0
(declare (salience 4700))
(id-root ?id talk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwacIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  talk.clp 	talk0   "  ?id "  bAwacIwa )" crlf))
)

;"talk","N","1.bAwacIwa"
;Let's have more work && less talk around here.
;--"2.gapaSapa"
;There has been talk about you.
;--"3.vAxa-vivAxa"
;I attended an interesting talk on local history.
;


;Added by Meena(19.5.10)
;Paul, in typically rude fashion, told him he was talking rubbish.
(defrule talk_rubbish1
(declare (salience 4900))
(id-root ?id talk)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 rubbish)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bakavAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " talk.clp  talk_rubbish1  "  ?id "  " ?id1 "  bakavAsa_kara  )" crlf))
)

;Added by Shirisha Manju (20-8-13) Suggested by Chaitanya Sir
;Henceforth, every Sunday, I shall be giving a talk on the teaching of the Gita, who is verily our mother.
(defrule talk_give
(declare (salience 4900))
(id-root ?id talk)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri give)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BASaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  talk.clp      talk_give   "  ?id "  BASaNa )" crlf))
)


;Salience reduced by Meena(19.5.10)
(defrule talk2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id talk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwacIwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  talk.clp 	talk2   "  ?id "  bAwacIwa_kara )" crlf))
)

;"talk","VT","1.bAwacIwa_karanA"
;We talked for a long time.
;--"2.bola_sakanA"
;Children learn to talk faster.
;
