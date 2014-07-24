
(defrule smear0
(declare (salience 5000))
(id-root ?id smear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XabbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smear.clp 	smear0   "  ?id "  XabbA )" crlf))
)

;"smear","N","1.XabbA"
;Smear on the walls during election time by posters leave indelible marks.
;--"2.medikala_parIkRaNa"
;A smear list is a medical list to check the cancer tissues or many other heart ailments.
;
(defrule smear1
(declare (salience 100))
(id-root ?id smear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mElA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smear.clp 	smear1   "  ?id "  mElA_kara )" crlf))
)

;@@@ Added by jagriti(16.1.2014)
;The story was an attempt to smear the party leader. 
;कहानी पार्टी नेता को बदनाम करने की एक कोशिश थी .
;It is not good to smear to anyone.
;किसी को बदनाम करना अच्छा नहीं है .
(defrule smear2
(declare (salience 4800))
(id-root ?id smear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-to_saMbanXI  ?id ?id1)(kriyA-object  ?id ?id1))
 (id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxanAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smear.clp 	smear2   "  ?id "  baxanAma_kara )" crlf))
)
;@@@ Added by jagriti(15.3.2014)
;The children had smeared mud on the walls.[wordnet] 
;बच्चों ने दीवारों पर कीचड पोत दिया था . 
(defrule smear3
(declare (salience 4500))
(id-root ?id smear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-on_saMbanXI  ?id ?id1)(kriyA-with_saMbanXI  ?id ?id1))
(kriyA-object  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id powa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smear.clp 	smear3   "  ?id "  powa_xe )" crlf))
)
;@@@ Added by jagriti(15.3.2014)
;He has smeared his face with butter.[rajpal]
;उसने अपने चेहरे पर मक्खन लगा लिया . 
(defrule smear4
(declare (salience 4600))
(id-root ?id smear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-with_saMbanXI  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 butter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smear.clp 	smear4   "  ?id "  lagA_le )" crlf))
)
;@@@ Added by jagriti(15.3.2014)
;He smeared the writing on the blackboard.[rajpal]
;उसने ब्लैकबोर्ड पर लेखन धुंधला कर दिया. 
(defrule smear5
(declare (salience 4700))
(id-root ?id smear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 writing|letter|word)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XuMXalA_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smear.clp 	smear5   "  ?id "  XuMXalA_kara_xe )" crlf))
)

;"smear","V","1.mElA_karanA"
;During holi festival people smear the faces of others with all sorts of greasy && oily substances.
;--"2.baxanAma_karanA"
;During election time the politicians smear the credibility of their opponents.
;--"3.kalaMka_lagAnA"
;The media today is permitting many cock && bull stories to smear the reputation of PM.
;
