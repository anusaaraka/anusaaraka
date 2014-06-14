
(defrule in0
(declare (salience 5000))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) faith)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in0   "  ?id "  para )" crlf))
)

;I have faith in him.
(defrule in1
(declare (salience 4900))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) in)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in1   "  ?id "  - )" crlf))
)




;Modified by Meena(29.10.09)
;I will have dinner at seven o'clock in the evening . 
(defrule in2
(declare (salience 4800))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) evening|noon|afternoon)
(id-word =(+ ?id 2) evening|noon|afternoon)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in2   "  ?id "  ko )" crlf))
)




(defrule in3
(declare (salience 4700))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) chair)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in3   "  ?id "  para )" crlf))
)

(defrule in4
(declare (salience 4600))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) go|slip|drag|pull|push)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in4   "  ?id "  aMxara )" crlf))
)

(defrule in5
(declare (salience 4500))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in5   "  ?id "  iMca )" crlf))
)

;"in","Abbr:inch","1.iMca"
;He is 4 ft 2 inches tall.
;
(defrule in6
(declare (salience 4400))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(not (kriyA-in_saMbanXI ?kri ?id1));Added by sheetal
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in6   "  ?id "  anxara )" crlf))
)

;"in","Adv","1.anxara"
;He walked in at the right moment.




;Added by Meena(29.10.09)
;I will have tea in the morning. 
(defrule in7
(declare (salience 1100))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 2) morning)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp        in7   "  ?id "  - )" crlf))
)



;;Modified by Meena(4.8.11) ; added (id-root =(- ?id 1) arrive|reach|come) for the following example.
;Reached in Honolulu, Mr. Shidler said that he believes the various Hooker malls can become profitable with new management. 
;Added by Meena(12.5.10)
;It was in Paris that Debussy first heard Balinese music . 
(defrule in8
(declare (salience 2000))
;(declare (salience 1000))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-dummy_subject  =(- ?id 1)  =(- ?id 2))(id-root =(- ?id 1) arrive|reach|come))
;(or(kriyA-dummy_subject  =(- ?id 1)  =(- ?id 2))(id-cat_coarse =(+ ?id 1) PropN))
(kriyA-in_saMbanXI =(- ?id 1) ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp        in8   "  ?id "  - )" crlf))
)






;Added by Meena(19.5.10)
;Paul, in typically rude fashion, told him he was talking rubbish.
(defrule in9
;(declare (salience 4300))
(declare (salience 1000))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(or(id-root =(+ ?id 2) fashion)(id-root =(+ ?id 3) fashion))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp        in9   "  ?id "  meM )" crlf))
)





;Salience reduced by Meena(29.10.09)
(defrule in10
;(declare (salience 4300))
(declare (salience 0))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ?wrd)
(or (id-cat_coarse ?id preposition)(kriyA-in_saMbanXI  ?kri ?id1));"kriyA-in_saMbanXI" added by sheetal
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in10   "  ?id "  meM )" crlf))
)




;Salience reduced by Meena(29.10.09)
(defrule in11
;(declare (salience 4300))
(declare (salience 0))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp        in10   "  ?id "  meM )" crlf))
)


;"in","Prep","1.meM"
;They were born in the same year 1984.
;--"2.se"
;He is blind in one eye.
;--"3.kA"
;He is the most famous person in town.
;
;"Prep","1.meM"
;They were born in the year 1984.
;ve 1984 meM janme.
;--"2. meM_kA"
;He is the most famous person in town.
;vaha isa Sahra kA sabase prasixXa  vyakwi hE.
;
;"Adv","1.anxara"
;He walked in at the right moment.
;vaha sahI samaya meM aMxara AyA.
;
;"Abbr:inch","1.iMca"
;He is 4 ft 2 inches tall.
;vaha 4 PIta 2 incesa uzcA hE.

;@@@ Added by Prachi Rathore[6-3-14]
;Short skirts are in again.[oald]
;छोटी स्कर्ट फिर से प्रचलन में है
(defrule in12
(declare (salience 5000))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracalana_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp        in12   "  ?id "  pracalana_meM)" crlf)))

;@@@ Added by Prachi Rathore[6-3-14]
;Applications must be in by April 30.[oald]
;प्रार्थना पत्र ३० अप्रेल तक पहुँच जाना चाहिये
(defrule in13
(declare (salience 5000))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id2 ?id1)
(kriyA-in_by_saMbanXI  ?id2 ?)
(id-root ?id1 application|letter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuca_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp        in13   "  ?id "  pahuca_jA)" crlf)))


;@@@ Added by Prachi Rathore[6-3-14]
;Will you keep a tally of the number of customers going in and out?[cambridge]
;क्या आप  अंदर और बाहर जाते हुए ग्राहकों की संख्या की गिनती रखेंगे? 
(defrule in14
(declare (salience 5000))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp        in14   "  ?id "  aMxara)" crlf)))


;@@@ Added by Prachi Rathore[6-3-14]
;Exotic pets are the in thing right now.[oald]
;विदेशी पालतू जानवर आजकल प्रचलित  हैं. 
(defrule in15
(declare (salience 5050))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root =(+ ?id 1) thing)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) pracaliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " in.clp        in15  "  ?id "  " (+ ?id 1) "  pracaliwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_in14
(declare (salience 5000))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " in.clp   sub_samA_in14   "   ?id " aMxara)" crlf)))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_in14
(declare (salience 5000))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " in.clp   obj_samA_in14   "   ?id " aMxara)" crlf)))
