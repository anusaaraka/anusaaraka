
;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Palm fronds. [Cambridge]
;ताङ के पेङ के लम्बे पत्ते.
(defrule palm0
(declare (salience 5000))
(id-root ?id palm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 date|frond|leaf|tree|coconut)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAfa_kA_pefa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  palm.clp 	palm0   "  ?id "  wAfa_kA_pefa )" crlf))
)

(defrule palm1
(declare (salience 4900))
(id-root ?id palm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haWelI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  palm.clp 	palm1   "  ?id "  haWelI )" crlf))
)

;"palm","N","1.haWelI"
;Her palms are very soft.
;usakI haWeliyAz bahuwa mulAyama hEM
;--"2.wAdZa_kA_pedZa"
;There are a lot of palm trees along the beach.
;samuxrawata para bahuwa wAdZa ke pedZa hEM.
;


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;The kick was palmed away by the goalkeeper. [MW]
;पादप्रहार गोलकीपर के द्वारा बाहर मारा गया था . 
(defrule palm2
(declare (salience 4800))
(id-root ?id palm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 away)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  palm.clp 	palm2   "  ?id "  mArA )" crlf))
)


(defrule palm3
(declare (salience 4700))
(id-root ?id palm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muTTI_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  palm.clp 	palm3   "  ?id "  muTTI_meM_raKa )" crlf))
)

;"palm","VT","1.muTTI_meM_raKanA"
;One minute the magician palmed the coin && the next minute it disappeared.
;eka palameM jAdUgara ne sikkA muTTI meM raKA Ora xUsare pala meM vaha gAyaba ho gayA.
;--"2.GUsa_xenA"
;I had to palm the accountant to get my loan sanctioned.
;muJe leKAkAra ko apane qNa svIkqwi ke liye GUsa xenI padZI.
;

;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;He palmed me off with an excuse about why he couldn't pay. [cambridge]
;उसने मुझे बहाना के साथ मनाया के वो क्यों नहीं खेल पाया .
(defrule palm4
(declare (salience 5700))
(id-root ?id palm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(kriyA-with_saMbanXI  ?id ?)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 manA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " palm.clp  palm4 "  ?id "  " ?id1 "  manA  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;He palmed his old computer off on me. [cambridge]
;उसने मुझसे अपने कम्प्यूटर से छुटकारा पाया .
(defrule palm5
(declare (salience 5600))
(id-root ?id palm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CutakArA_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " palm.clp  palm5 "  ?id "  " ?id1 "  CutakArA_pA  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;She's always palming the worst jobs off on her assistant. [oald]
;वह हमेशा अपने असिस्टेन्ट के लिये सबसे खराब काम हाथ में रखती है .
(defrule palm6
(declare (salience 5800))
(id-root ?id palm)
(id-word ?id palming)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAWa_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " palm.clp  palm6 "  ?id "  " ?id1 "  hAWa_meM_raKa  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;He palmed himself off as a lawyer. [M-W]
;उसने वकील के जैसे दिखावा किया .
(defrule palm7
(declare (salience 6000))
(id-root ?id palm)
(id-word ?id palming)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiKAvA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " palm.clp  palm7 "  ?id "  " ?id1 "  xiKAvA_kara  )" crlf))
)

