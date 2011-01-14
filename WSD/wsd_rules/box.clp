
(defrule box0
(declare (salience 5000))
(id-root ?id box)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id boxing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bOYksiMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  box.clp  	box0   "  ?id "  bOYksiMga )" crlf))
)

(defrule box1
(declare (salience 4900))
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
(declare (salience 4800))
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
