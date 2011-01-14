
(defrule piss0
(declare (salience 5000))
(id-root ?id piss)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pissed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id piyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  piss.clp  	piss0   "  ?id "  piyA_huA )" crlf))
)

;"pissed","Adj","1.piyA huA"
;He is always pissed.
;
;
(defrule piss1
(declare (salience 4900))
(id-root ?id piss)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cale_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " piss.clp	piss1  "  ?id "  " ?id1 "  cale_jA  )" crlf))
)

;Just piss off! I don't want you here anymore.
;cale jAo ! mEM wumheM yahAz Ora aXika nahIM cAhawA
(defrule piss2
(declare (salience 4800))
(id-root ?id piss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piss.clp 	piss2   "  ?id "  mUwra )" crlf))
)

;"piss","N","1.mUwra/peSAba"
;You are permitted to go for piss here.
;
(defrule piss3
(declare (salience 4700))
(id-root ?id piss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piss.clp 	piss3   "  ?id "  mUwa )" crlf))
)

;"piss","V","1.mUwanA/peSAba_karanA"
;Pissing is a biological act.
;
