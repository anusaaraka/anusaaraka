;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)07-jan-2014
;He is considering taking legal action against the hospital.[oald]
;वह अस्पताल के खिलाफ कानूनी कार्रवाई करने की सोच रहा है.
;Ramprasad Yadav demanded that action is taken against the Secretary.[news-dev]
;रामप्रसाद यादव ने  सचिव पर कारवाई करने की मांग की है
(defrule action0
(declare (salience 5000))
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 take);modified word fact to root fcat by Garima Singh
(or(kriyA-object ?id1 ?id)(kriyA-subject  ?id1 ?id));added 'kriyA-subject'
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryavAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action0   "  ?id "  kAryavAhI )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)06-jan-2014
;The action should be deferred for some time.[shiksharthi kosh]
;कार्रवाई थोडे समय तक स्थगित कर दी जानी चाहिए . 
(defrule action3
(declare (salience 5000))
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?id)
(id-root ?kri defer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryavAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action3   "  ?id "  kAryavAhI )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)06-jan-2014
;He is responsible for his actions.[shiksharthi kosh]
;वह उसके  कर्मों के लिये उत्तरदायी है . 
;She has to accept the consequences of her actions.[cambridge]
;उसको उसके कर्मों के परिणाम को स्वीकार करना पड़ेगा .
;To know a person by his actions.[shiksharthi kosh]
;व्यक्ति को उसके कर्मों से जानना
(defrule action4
(declare (salience 5000))
(id-word ?id actions)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-for_saMbanXI  ?id1 ?id)(viSeRya-of_saMbanXI  ?id1 ?id)(kriyA-by_saMbanXI  ?id1 ?id))
(viSeRya-RaRTI_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action4   "  ?id "  karma )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)06-jan-2014
;To put a scheme into action.[shiksharthi kosh]
;योजना को कार्यान्वित करना
(defrule action5
(declare (salience 5000))
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?kri ?id)
(id-word ?kri put) 
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) kAryAnviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " action.clp	action5  "  ?id "  " (- ?id 1) "  karma )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)07-jan-2014
;Soldiers killed in action.[oald]
;युद्ध में मारे गये सैनिक . 
(defrule action6
(declare (salience 5000))
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?kri ?id)
(id-root ?kri kill)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action6   "  ?id "  yuxXa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)07-jan-2014
;The action takes place in France.[oald]
;घटना फ्रांस में होती है . 
(defrule action7
(declare (salience 4000))
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?id)
(id-root ?kri take)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action7   "  ?id "  GatanA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)07-jan-2014
;New York is where the action is.[oald]
;न्यूयार्क वहाँ है जहाँ रोमांचक घटनायें है   
(defrule action8
(declare (salience 5000))
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri2 ?id)
(kriyA-samakAlika_kriyA  ?kri ?kri2)
(id-word ?kri is) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id romAMcaka_GatanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action8   "  ?id "  romAMcaka_GatanA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)07-jan-2014
;The action of sunlight on the skin.[oald]
;त्वचा पर धूप का असर .    
(defrule action9
(declare (salience 5000))
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(viSeRya-on_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action9   "  ?id "  asara )" crlf))
)

;**************************DEFAULT RULES*****************************************
(defrule action1
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAnUnI_kAryavAhI_karane_yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action1   "  ?id "  kAnUnI_kAryavAhI_karane_yogya )" crlf))
)

;"action","Adj","1.kAnUnI_kAryavAhI_karane_yogya"
;In that book there were stories of murders && other unnatural actions.
;
(defrule action2
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action2   "  ?id "  kriyA )" crlf))
)

;"action","N","1.kriyA"
;To every action there is an equal && opposite reaction.
;The government took action against the anti-national group.
;
