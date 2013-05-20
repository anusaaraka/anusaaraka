
(defrule press0
(declare (salience 5000))
(id-root ?id press)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pressed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xabAva_meM_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  press.clp  	press0   "  ?id "  xabAva_meM_honA )" crlf))
)

;"pressed","Adj","1.xabAva_meM_honA[karanA]"
;At the moment, India is pressed for money.
;
(defrule press1
(declare (salience 4900))
(id-root ?id press)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 karawe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " press.clp	press1  "  ?id "  " ?id1 "  karawe_raha  )" crlf))
)

;She pressed on with her work.
;vaha apanA kArya karawI rahI
(defrule press2
(declare (salience 4800))
(id-root ?id press)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pressed )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  press.clp  	press2   "  ?id "  xabA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  press.clp      press2   "  ?id " yA )" crlf))
)

(defrule press3
(declare (salience 4700))
(id-root ?id press)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prEsa));(meaning 'pawrakAriwA' is changed with 'prEsa' by sheetal(29-09-09).)
(assert (id-wsd_number ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  press.clp    press3   "  ?id "  prEsa )" crlf))
)

;"press","N","1.pawrakAriwA"
;The press was prohibited from meeting the prisoners of war.
;--"2.CApAKAnA"
;Text-Books are printed in the printing press.
;--"3.muxraNa"
;I wrote a book && prepared for the press.
;--"4.nicodZanevAlA"
;We bought a lemon press from the market.
;--"5.xabAva"
;Give a press to the shirt before wearing it. 
;--"6.BIda-BAda"
;I get a way through the press of people in that market.
;--"7.alamArI"
;I have a wooden press in my bed-room.
;
(defrule press4
(declare (salience 4600))
(id-root ?id press)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  press.clp 	press4   "  ?id "  xabA )" crlf))
)

;"press","V","1.xabAnA"
;I pressed my face against the pillow in anguish.
;Press car bodies out of sheets of metal.
;--"2.nicodanA"
;The orange was firmly pressed to get the juice.
;--"3.xabAva_dAlanA"
;The Hero gently pressed the Heroine's arm, who was crying.
;--"4.Gera-lenA"
;The police officials pressed the militants to surrender.
;--"5.iswrI_karanA"
;The bride's saree needs pressing.
;
(defrule press5
(declare (salience 4500))
(id-root ?id press)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pressing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id awyAvaSyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  press.clp  	press5   "  ?id "  awyAvaSyaka )" crlf))
)

;"pressing","Adj","1.awyAvaSyaka"
;Employment for all is the pressing need for hour.
;
(defrule press6
(declare (salience 4400))
(id-root ?id press)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pressing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xabAva_dAlakara_vaswu_banAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  press.clp  	press6   "  ?id "  xabAva_dAlakara_vaswu_banAnA )" crlf))
)

;"pressing","N","1.xabAva_dAlakara_vaswu_banAnA"
;The factory manufactures pressings from aeroplane bodies.
;
(defrule press7
(declare (salience 4300))
(id-root ?id press)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 karawe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " press.clp	press7  "  ?id "  " ?id1 "  karawe_raha  )" crlf))
)

;She pressed on with her work.
;vaha apanA kArya karawI rahI
(defrule press8
(declare (salience 4200))
(id-root ?id press)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawrakAriwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  press.clp 	press8   "  ?id "  pawrakAriwA )" crlf))
)

;"press","N","1.pawrakAriwA"
;The press was prohibited from meeting the prisoners of war.
;--"2.CApAKAnA"
;Text-Books are printed in the printing press.
;--"3.muxraNa"
;I wrote a book && prepared for the press.
;--"4.nicodZanevAlA"
;We bought a lemon press from the market.
;--"5.xabAva"
;Give a press to the shirt before wearing it. 
;--"6.BIda-BAda"
;I get a way through the press of people in that market.
;--"7.alamArI"
;I have a wooden press in my bed-room.
;
(defrule press9
(declare (salience 4100))
(id-root ?id press)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  press.clp 	press9   "  ?id "  xabA )" crlf))
)

;"press","V","1.xabAnA"
;I pressed my face against the pillow in anguish.
;Press car bodies out of sheets of metal.
;--"2.nicodanA"
;The orange was firmly pressed to get the juice.
;--"3.xabAva_dAlanA"
;The Hero gently pressed the Heroine's arm, who was crying.
;--"4.Gera-lenA"
;The police officials pressed the militants to surrender.
;--"5.iswrI_karanA"
;The bride's saree needs pressing.
;
