
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-Feb-2014
;There's nothing worth watching on the box tonight.[cambridge]
;टेलीविजन पर आज रात देखने लायक कुछ नहीं है.
(defrule box3
(declare (salience 5000))
(id-root ?id box)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id telIvijana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  box.clp  	box3   "  ?id "  telIvijana )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-Feb-2014
;I've boxed against some of the best.[cambridge]
;मैंने कुछ सर्वश्रेष्ठ खिलाड़ियों के विरुद्ध बॉक्सिंग करी है.
(defrule box4
(declare (salience 5000))
(id-root ?id box)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mukkebAjI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  box.clp  	box4   "  ?id "  mukkebAjI_kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-Feb-2014
;If you would like more information, mark this box.[cambridge]
;यदि आप अधिक जानकारी चाहते हैं, तो इस खाने को चिह्नित करे.
(defrule box5
(declare (salience 5000))
(id-root ?id box)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri mark|check|tick)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  box.clp  	box5   "  ?id "  KAnA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-Feb-2014
;Someone had parked behind us and boxed us in.[cambridge]
;किसी ने हमारे पीछे गाड़ी खड़ी करके हमारा रास्ता बंद कर दिया
(defrule box6
(declare (salience 5000))
(id-root ?id box)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 in)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rAswA_banXa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " box.clp  	box6  "  ?id "  " ?id1 "  rAswA_banXa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " box.clp  	box6   "  ?id " kA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-Feb-2014
;She felt boxed in by all their petty rules.[cambridge]
;उसने उनके सभी क्षुद्र नियमो से बाधित महसूस किया
(defrule box7
(declare (salience 5000))
(id-root ?id box)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object  ?id ?))
(kriyA-upasarga ?id ?id1)
(id-word ?id1 in)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " box.clp  	box7  "  ?id "  " ?id1 "  bAXiwa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-Feb-2014
;Should I box these shoes up for you, or would you like to wear them now?[cambridge]
;क्या आपके लिये ये जूते मैं डब्बे में बन्द कर दूँ या आप इन्हे अभी पहनना चाहेंगे
(defrule box8
(declare (salience 5000))
(id-root ?id box)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 dabbe_meM_banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " box.clp  	box8  "  ?id "  " ?id1 "  dabbe_meM_banxa_kara )" crlf))
)

;*************************DEFAULT RULES*******************************

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-Feb-2014
;Changed the meaning from 'boYksiMga' to 'mukkebAjI'
(defrule box0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id box)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id boxing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mukkebAjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  box.clp  	box0   "  ?id "  mukkebAjI )" crlf))
)

(defrule box1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id box)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baksA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  box.clp 	box1   "  ?id "  baksA )" crlf))
)

(defrule box2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id box)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakse_meM_banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  box.clp 	box2   "  ?id "  bakse_meM_banxa_kara )" crlf))
)

;"box","VT","1.bakse_meM_banxa_karanA"
;Box the gift, please
;--"2.GUMsA_mAranA"
;He boxed him on the ear.
;
;
;LEVEL 
;Headword  : box
;
;Examples --
;
;"box","N","1.baksa"
;She kept the valuables in her box.
;usane kImawI cIjZeM apane baksa meM raKa lIM.
;--"2.dibbA"
;He gave her a box of sweets
;usane use miTAI kA dibbA xiyA.
;--"3.koRTaka"
;The chart contained many boxes
;cArta meM aneka koRTaka We.  <--baksa kI Akqwi kA honA
;He wrote the box number of the advertisement in a paper 
;usane vijFApana kI koRTaka saMKyA eka kAgajZa para liKI. 
;Tick the appropriate box 
;uciwa koRTaka para niSAna lagAo
;--"4.kaTaGarA(axAlawa_meM)"-baksa
;Witness box
;vitanesa ko KadA karane kA kataGarA. <--baksa kI Akqwi kA cOkora banxa honA
;--"5.(sinemA_meM)prekRakoM_kA_alaga_kakRa"-baksa
;Reserve a ticket in the box at the theatre
;sinemA meM eka tikata baksa meM ArakRaNa kara
;--"6.mukkA"
;He went to see a box performance
;vaha mukkebAjZI kA Kela xeKane gayA
;
;"box","V","1.baksa_meM_raKanA"
;Box the gift please
;kqpayA upahAra ko baksa meM raKo 
;--"2.mukkebAjZI_karanA"
;Did you box at school?
;kyA wUneM skUla meM mukkebAjZI kI?
;                                                                              
;vyAKyA : uparyukwa saMjFA vAkya 1 se 5 waka waWA kriyA uxAharaNa 1 meM saBI prayoga
;'baksa' ke arWa kI ora saMkewa karawe hEM. saMjFA ke anwargawa arWa 6 Ora kriyA meM arWa 2 bilkula Binna arWa 'mukkA' xe rahe hEM . awaH baksa kA sUwra hogA --
; 
;sUwra  : baksa`/mukkA
;
;Someone had parked behind us and boxed us in.
;She felt boxed in by all their petty rules.
;Suzie realized that she had to box clever.
;If you would like more information, mark this box.
;Their new house is just a box.
;There's nothing worth watching on the box tonight.
;Please reply to Box 307, The Times, London.
;He used to box every weekend.
;I've boxed against some of the best.
;Should I box these shoes up for you, or would you like to wear them now?
;What's on the box tonight?
;Put a cross in the appropriate box.
;To tick/check a box.
;I called him from the phone box on the corner.

;************************CBR Problem*****************

;Put a cross in the appropriate box.
