
(defrule bound2
(declare (salience 4800))
(id-root ?id bound)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CalAMga_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bound.clp	bound2  "  ?id "  " ?id1 "  CalAMga_mAra  )" crlf))
)


;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)27-jan-2014
;modified the vibhakti from 'ne' to'se' , added 'kriyA-object' relation and deleted 'kriyA-subject' relation
;Added by Meena(2.6.10)
;They bound the packages with brightly coloured ribbon.
(defrule bound4
(declare (salience 3000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bound )
(kriyA-object ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa ))
;(assert (id-wsd_root ?id bind))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp      bound4   "  ?id "  bAzXa  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  bound.clp      bound4   "  ?id "  se )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27-jan-2014
;He's too bound up in his work to have much time for his children.
;
(defrule bound5
(declare (salience 3000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bound ) 
(kriyA-kriyA_viSeRaNa  ?id =(+ ?id 1))
(id-word =(+ ?id 1) up)
(viSeRya-in_saMbanXI  =(+ ?id 1) ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) vyaswa )) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bound.clp	bound5  "  ?id "  " (+ ?id 1) "  vyaswa  )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27-jan-2014
;From that moment my life became inextricably bound up with hers. 
(defrule bound6
(declare (salience 3000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bound )
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-with_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id najaxIkI_se_judZa_jA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp      bound6   "  ?id "  najaxIkI_se_judZa_jA  )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27-jan-2014
;Communities bound together by customs and traditions.
(defrule bound7
(declare (salience 3000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bound )
(kriyA-by_saMbanXI  ?id ?id1)
(kriyA-kriyA_viSeRaNa  ?id =(+ ?id 1))
(id-word =(+ ?id 1) together)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id judZa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp      bound7   "  ?id "  judZa  )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-jan-2014
;You've done so much work that you're bound to pass the exam. [oald]
;आपने इतना काम किया है कि आपका परीक्षा पास  .
;They are bound to discover that sooner or later.
;उन्हें अभी या बाद में पता लगना ही है। 
(defrule bound8
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bound )
(or(kriyA-kriyArWa_kriyA  ?id ?id1)(kriyA-kqxanwa_karma  ?id ?id1))
(to-infinitive  =(+ ?id 1) ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hI ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp      bound8   "  ?id "  hI  )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27-jan-2014
;The field was bounded on the left by a wood.[oald]
;क्षेत्र  बाईं तरफ एक लकड़ी से घिरा हुआ था.
(defrule bound9
(declare (salience 3000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bound )
(kriyA-subject  ?id ?sub)
(kriyA-karma  ?id ?sub)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GirA_ho ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp      bound9   "  ?id "  GirA_ho  )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 1-Feb-2014
;We are not bound by the decision.[oald]
;You are bound by the contract to pay before the end of the month.[oald]
(defrule bound10
(declare (salience 2000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bound )
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMXa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp      bound10   "  ?id "  baMXa  )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 1-Feb-2014
;I am bound to say I disagree with you on this point.[oald]
;मैं कहने के लिये मजबूर हूँ कि मैं इस बात पर आपसे असहमत हूँ
(defrule bound11
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bound )
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-word ?id1 say);conflict rule8, so added a specific condition
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabUra ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp      bound11   "  ?id "  majabUra  )" crlf)
)
)



;**********************DEFAULT RULES*****************************

(defrule bound0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bazXA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp 	bound0   "  ?id "  bazXA_huA )" crlf))
)


(defrule bound1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp 	bound1   "  ?id "  sImA )" crlf))
)


;Salience reduced by Meena(2.5.10)
(defrule bound3
(declare (salience 0))
;(declare (salience 4600))
(id-root ?id bound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CalAMga_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp 	bound3   "  ?id "  CalAMga_mAra )" crlf))
)

;default_sense && category=verb	kulAzce_mAranA/uCala	0
;"bound","VTI","1.kulAzce_mAranA/uCalanA"
;The horse bounded across the meadow
;

