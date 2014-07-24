
;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)16-dec-2013
;The ventilator shafts were heavily barred.[gyananidhi]
;रोशन दान पर मोटी मोटी शलाकाएं लगी हुई थीं।
(defrule bar4
(declare (salience 5000))
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?sub)
(id-root ?sub shaft)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SalAkAeM_lagI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bar.clp  	bar4   "  ?id "  SalAkAeM_lagI_ho )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)16-dec-2013
;All the doors and windows were barred.[oald]
;सभी खिड़कीयाँ और दरवाजे अर्गला से बन्द करे गये
(defrule bar5
(declare (salience 5000))
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id barred )
(or
(and(kriyA-subject ?id ?id1)(id-root ?id1 door|window))
(and(kriyA-subject ?id ?sub)(conjunction-components  ?sub ?id1 ?id2)(or(id-root ?id1 door|window)(id-root ?id2 door|window)))
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id argalA_se_baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bar.clp  	bar5   "  ?id "  argalA_se_baMxa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)16-dec-2013
;The players are barred from drinking alcohol the night before a match.[oald]
;खिलाड़ियों को खेल से एक रात पहले शराब पीने से प्रतिबन्धित किया गया है
(defrule bar6
(declare (salience 5000))
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id barred )
(kriyA-from_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawibanXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bar.clp  	bar6   "  ?id "  prawibanXiwa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)16-dec-2013
;We found our way barred by rocks.[oald]
;हमें हमारा रास्ता पत्थरों द्वारा बंद मिला
(defrule bar7
(declare (salience 5000))
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id barred )
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bar.clp  	bar7   "  ?id "  baMxa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)16-dec-2013
;a bar of chocolate/soap.[oald]
;चौकलेट का एक टुकड़ा
(defrule bar8
(declare (salience 5000))
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id barred )
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  bar.clp  	bar8   "  ?id "  tukada )" crlf))
)

;***************DEFAULT RULE***********************

(defrule bar0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id barring )
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ke_alAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bar.clp  	bar0   "  ?id "  ke_alAvA )" crlf))
)

;"barring","Prep","1.ke_alAvA"
;Meals are available at all times,barring Sunday evenings.
;
(defrule bar1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarAbaGara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bar.clp 	bar1   "  ?id "  SarAbaGara )" crlf))
)

;"bar","N","1.SarAbaGara"
;I saw Ram walking into the bar.
;--"2.salAKa/SalAkA/Cada"
;They fitted bars to their windows for safety.
;--"3.rukAvata"
;Poor health may be a bar to success in life.
;
(defrule bar2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko_CodZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bar.clp 	bar2   "  ?id "  ko_CodZa_kara )" crlf))
)

;"bar","Prep","1.ko_CodZa_kara"
;The whole group is here bar two.
;
(defrule bar3
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bar.clp 	bar3   "  ?id "  roka )" crlf))
)

;"bar","V","1.argalA_se_baMxa_karanA"
;They immediately barred the door from inside && switched off the lights.
;--"2.prawibaMXiwa_karanA"
;Troops barred the road so we had to turn back.
;
