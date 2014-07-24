
(defrule pour0
(declare (salience 5000))
(id-root ?id pour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUsalAXAra_varRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pour.clp 	pour0   "  ?id "  mUsalAXAra_varRA )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;We can't go out in this weather - it's pouring! [Cambridge]
;हम इस मौसम में बाहर नहीं जा सकते हैं- यह मूसलाधार वर्षा हो रही है!
(defrule pour1
(declare (salience 4900))
(id-root ?id pour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(and(kriyA-subject  ?id ?)(kriyA-vAkyakarma  ?id ?))(and(kriyA-aXikaraNavAcI  ?id ?)(kriyA-object  ?id ?)(kriyA-subject  ?id ?)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUsalAXAra_varRA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pour.clp 	pour1   "  ?id "  mUsalAXAra_varRA_ho )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;I poured the milk into a jug. [Cambridge]
;मैंने सुराही के अन्दर दूध बहाया . 
(defrule pour2
(declare (salience 4800))
(id-root ?id pour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(and(kriyA-object  ?id ?)(kriyA-subject  ?id ?)(kriyA-into_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pour.clp 	pour2   "  ?id "  bahAyA )" crlf))
)

;Added by Sonam Gupta MTech IT Banasthali 2013
;The crowd poured out into the street. [Cambridge]
;भीड सडक के अन्दर से बाहर उमडी . 
(defrule pour3
(declare (salience 4700))
(id-root ?id pour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 crowd|letters|station)
(or(and(kriyA-upasarga  ?id ?)(kriyA-subject  ?id ?id1)(kriyA-into_saMbanXI  ?id ?))(and(kriyA-upasarga  ?id ?)(kriyA-subject  ?id ?id1)(kriyA-kriyArWa_kriyA  ? ?id)(to-infinitive  ? ?id))(and(kriyA-subject  ?id ?)(kriyA-kqxanwa_karma  ? ?id)(kriyA-of_saMbanXI  ?id ?id1)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id umadI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pour.clp 	pour3   "  ?id "  umadI )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;Can I pour you a drink?  [OALD]
;क्या मैं आपके लिये पेय या शरबत डाल सकता हूँ?
(defrule pour4
(declare (salience 4600))
(id-root ?id pour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 drink|drinks|tea|coffee|milk|water|softdrink|lemonade|cup|glass)
(or(and(kriyA-kqxanwa_karma  ?id ?id1)(kriyA-subject  ?id ?))(and(kriyA-object  ?id ?id1)(kriyA-upasarga  ?id ?)(kriyA-subject  ?id ?)(kriyA-kqxanwa_karma  ? ?id))(and(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?)(kriyA-for_saMbanXI  ?id ?))(and(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?))(and(kriyA-object  ?id ?)(kriyA-subject  ?id ?)(kriyA-kriyA_viSeRaNa  ?id ?)(kriyA-into_saMbanXI  ?id ?id1)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pour.clp 	pour4   "  ?id "  dAla )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Golden sunshine poured down. [Gyannidhi]
;सुनहरी धूप निकली.
(defrule pour5
(declare (salience 4500))
(id-root ?id pour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 down)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " poke.clp	poke1  "  ?id "  " ?id1 "  nikalI )" crlf))
)


;"pour","V","1.bahanA"
;His tears were pouring down while he heard that news.
;--"2.bahA xenA"
;She poured out all the remaining water. 
;--"3.mUsalaXAra barasanA"
;It's pouring outside.
;--"4.pravAhiwa_honA"
;Commuters were pouring in to the station.
;
;
