
(defrule express0
(declare (salience 5000))
(id-root ?id express)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIGra_jAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  express.clp 	express0   "  ?id "  SIGra_jAne_vAlA )" crlf))
)


;"express","Adj","1.SIGra_jAne_vAlA"
;I'm going to Indore in express train.
;--"2.spaRta"
;It was her express wish to get her son married to a poor girl.
;

;@@@ Added by Pramila(Banasthali University) on 25-11-2013
;I would like to express my thanks for your kindness.            ;cald
;आपकी दयालुता के लिए मैं अपना धन्यवाद देना चाहूँगा .
(defrule express1
(declare (salience 5000))
(id-root ?id express)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-object  ?id ?id1)
(id-word ?id1 thanks)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  express.clp 	express1   "  ?id "  xe )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 25-11-2013
;I'm afraid I'm not expressing myself very clearly.           ;cald
;मुझे लगता है कि मैं अपने बारे में बड़े स्पष्ट रूप से  जाहिर नहीं कर पा  रहा हूँ 
(defrule express3
(declare (salience 5000))
(id-root ?id express)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 himself|herself|ourselves|themselves|myself|itsef)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAhira_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  express.clp 	express3   "  ?id "  jAhira_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 25-11-2013
;Your order will be expressed to you within 24 hours.              ;cald
;आपका आर्डर २४ घंटे के अंदर आपको भेज दिया जायेगा.
;modified on 08-03-2014 ['(kriyA-within_saMbanXI  ?id ?id2)' added conflicting sentence : Hence the density should be expressed to only 2 significant figures.(अतः घनत्व को केवल दो सार्थक अङ्कों तक व्यक्त किया जाना चाहिए)]
(defrule express4
(declare (salience 4900))
(id-root ?id express)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(kriyA-within_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Beja_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  express.clp 	express4   "  ?id "  Beja_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 25-11-2013
;Coconut milk is expressed from grated coconuts.            ;oald
;नारियल दूध कसे हुए नारियलों से निकाल लिया है.
(defrule express5
(declare (salience 5000))
(id-root ?id express)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  express.clp 	express5   "  ?id "  nikAla_le )" crlf))
)

(defrule express6
(declare (salience 4000))
(id-root ?id express)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  express.clp 	express6   "  ?id "  vyakwa_kara )" crlf))
)

;"express","VT","1.vyakwa_karanA"
;She expressed her feelings very clearly.
;

;@@@ Added by Pramila(BU) on 31-01-2014         
;The Chancellor did not attend but sent a message to the convocation expressing the gratitude of the Government of India to Sir 
;Asutosh Mukherjee for all the good work he had done for the University.      ;gyannindhi
;कुलाधिपति स्वयं उपस्थित नहीं हुए परंतु उन्होंने दीक्षांत समारोह को एक संदेश भेजा जिसमें विश्वविद्यालय के लिए सर आशुतोष मुकर्जी द्वारा किये गये सभी अच्छे कार्यों के लिए कृतज्ञता व्यक्त की गई थी।
;[This rule was conflicting with 'Ex: Your order will be expressed to you within 24 hours.' So separate rule was made for '(viSeRya-kqxanwa_viSeRaNa ?id1 ?id)' even though default rule is available ]
(defrule express7
(declare (salience 5000))
(id-root ?id express)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  express.clp 	express7   "  ?id "  vyakwa_kara )" crlf))
)


;------------removed rule
;date : 25-11-2013
;meaning 'xiKA'
;(kriyA-as_saMbanXI  ?id ?id1)
;(id-cat_coarse ?id verb)


