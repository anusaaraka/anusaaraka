
(defrule drain0
(declare (salience 5000))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain0   "  ?id "  nAlI )" crlf))
)

;"drain","N","1.nAlI/pawanAlA"
;They cleaned all the drains. 
;--"2.bahAva"
;Teaching a child in a professional course causes a drain on resources.
;
(defrule drain1
(declare (salience 4900))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain1   "  ?id "  bahA_xe )" crlf))
)

(defrule drain2
(declare (salience 4000))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain2   "  ?id "  baha_jA )" crlf))
)

;"drain","VI","1.baha_jAnA/nikala_jAnA"
;The rain water drains into this big vat.
;--"2.KAlI_karanA[honA]"
;We drained the oil tank
;The water drained from the pipe
;Life in the camp drained him
;

;@@@ Added by Pramila(Banasthali University) on 15-01-2014
;Drain off the excess fat from the meat.     ;oald
;मांस से अतिरिक्त चर्बी निकाल दो.
(defrule drain3
(declare (salience 5000))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drain.clp	drain3  "  ?id "  " ?id1 "  nikAla_xe  )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 15-01-2014
;The long journey completely drained me.           ;cald
;लम्बी यात्रा ने मुझे पूरी तरह से थका दिया.
(defrule drain4
(declare (salience 5000))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WakA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain4   "  ?id "  WakA_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 15-01-2014
;Leave the dishes to drain.    ;oald
;बर्तनों को सूखने के लिए छोड़ दो.
;Drain the pasta thoroughly.          ;cald
;पास्ता को पूरी तरह से सुखाओ.
(defrule drain5
(declare (salience 4900))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-anaBihiwa_subject  ?id ?id1)(kriyA-kriyA_viSeRaNa  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain5   "  ?id "  sUKa )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 15-01-2014
;We had to drain the oil out of the engine.        ;oald
;हमें इंजन से तेल निकालना था.
(defrule drain6
(declare (salience 5000))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-of_saMbanXI  ?id ?id1)
(kriyA-kriyArWa_kriyA  ?id2 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain6   "  ?id "  nikAla )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 15-01-2014
;We drained the pond and filled it with fresh water.         ;cald
;हमने तालाब को खाली किया और  इसे ताजा पानी से भरा.
(defrule drain7
(declare (salience 5000))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(conjunction-components  ?id1 ?id ?id2)
(id-root ?id2 fill)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain7   "  ?id "  KAlI_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 15-01-2014
;The colour drained from his face/cheeks when they told him the results.      ;cald
;जब उन्होंने उसे परिणाम बताए तो उसके चेहरे से रंग उड़ गया.
(defrule drain8
(declare (salience 5000))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
(id-root ?id1 face|cheek)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id udZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain8   "  ?id "  udZa_jA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 16-01-2014
;I think looking after her elderly mother is quite a drain on her energy.      ;cald 
;मैं सोचता हूँ कि उसकी बुजुर्ग माँ की देख-रेख करना उसकी ऊर्जा का काफी व्यय है .      
(defrule drain9
(declare (salience 5000))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain9   "  ?id "  vyaya )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 15-01-2014
;In one gulp, he drained the glass.        ;oald
;एक घूँट में ,उसने गिलास खत्म कर दिया.
(defrule drain10
(declare (salience 5000))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI ?id ?id1)
(viSeRya-saMKyA_viSeRaNa  ?id1 ?id3)
(id-word ?id3 one)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kawma_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain10   "  ?id "  Kawma_kara_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 15-01-2014
;She quickly drained the last of her drink.     ;oald
;उसने जल्दी से अपनी बची हुई पेय खत्म कर दी.
(defrule drain11
(declare (salience 5000))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root ?id1 last)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kawma_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain11   "  ?id "  Kawma_kara_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 16-01-2014
;The long war had drained the resources of both countries.     ;cald
;लम्बे युद्ध ने दोनो देशो के संसाधन व्यय कर दिए.
(defrule drain12
(declare (salience 4900))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyaya_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain12   "  ?id "  vyaya_kara_xe )" crlf))
)
