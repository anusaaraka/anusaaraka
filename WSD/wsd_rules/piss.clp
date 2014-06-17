
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

;"piss","V","1.mUwanA/peSAba_karanA"
;Pissing is a biological act.
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

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-2-2014
;There was piss all over the floor.  [Camb]
;पूरे फर्श पर मूत्र था .
(defrule piss4
(declare (salience 4700))
(id-root ?id piss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piss.clp 	piss4   "  ?id "  mUwra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-2-2014
;He told me I'd won and I thought it was just a piss take.  [Camb]
;उसने मुझे बताया कि मैं जीत जाऊँगा और मैंने सोचा कि यह बस एक मूर्खता है .
(defrule piss5
(declare (salience 4700))
(id-root ?id piss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 take)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mUrKwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " piss.clp  piss5  "  ?id "  " ?id1 "  mUrKwA  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-2-2014
;He did a piss take of fiona. [Camb]
;उसने फिओना की नकल की .
(defrule piss6
(declare (salience 4700))
(id-root ?id piss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 take)
(kriyA-of_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nakala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " piss.clp  piss6  "  ?id "  " ?id1 "  nakala  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-2-2014
;Everyone just pissed off and left me to clean up.  [Camb]
;हर कोई बस चिढ गया और सफाई के लिए मुझे छोङ गए .
(defrule piss7
(declare (salience 4700))
(id-root ?id piss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ciDa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " piss.clp  piss7  "  ?id "  " ?id1 "  ciDa_jA  )" crlf))
)

;
