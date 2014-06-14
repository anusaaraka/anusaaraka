;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;I felt the performance speech presentation lacked punch.
;मैंने महसूस किया प्रदर्शन भाषण व्याख्यान में प्रभाव की कमी थी. 
(defrule punch0
(declare (salience 5000))
(id-root ?id punch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punch.clp 	punch0   "  ?id "  praBAva )" crlf))
)


(defrule punch1
(declare (salience 4900))
(id-root ?id punch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punch.clp 	punch1   "  ?id "  mukkA )" crlf))
)

;"punch","N","1.mukkA"
;His friend gave him a hard punch on his face.
;


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;I was just punching holes in some sheets of paper. [Cambridge]
;मैं समाचार पत्र की कुछ चादरों में जरा छेद कर रहा था . 
(defrule punch2
(declare (salience 4800))
(id-root ?id punch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 hole)
;(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Cexa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  punch.clp	punch2   " ?id " " ?id1 "  Cexa_kara )" crlf))
)




;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;I punched the button to summon the elevator. [OALD]
;मैंने लिफ्ट बुलाने के लिए बटन जोर से दबाया . 
(defrule punch3
(declare (salience 4700))
(id-root ?id punch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 button|brake)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_se_xabAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punch.clp 	punch3   "  ?id " jora_se_xabAyA )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;He punched him in the stomach.
;उसने पेट में उसको मुक्का मारा . 
(defrule punch4
(declare (salience 4600))
(id-root ?id punch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun|pronoun)
(id-cat_coarse ?id2 pronoun|noun)
(kriyA-object  ?id ?id2)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukkA_mArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punch.clp 	punch4   "  ?id " mukkA_mArA )" crlf))
)




(defrule punch5
(declare (salience 4500))
(id-root ?id punch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punch.clp 	punch5   "  ?id "  Cexa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 11-2-2014
;The steak was punched up with a pepper sauce. [M-W]
;माँस का टुकड़ा काली मिर्च की चटनी से जानदार बनाया गया .
(defrule punch6
(declare (salience 4500))
(id-root ?id punch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAnaxAra_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " punch.clp  punch6  "  ?id "  " ?id1 "  jAnaxAra_banA  )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 11-2-2014
;A bowl of punch. [M-W]
;शरबत का कटोरा .
(defrule punch7
(declare (salience 5500))
(id-root ?id punch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ? ?id)(samAsa_viSeRya-samAsa_viSeRaNa ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sarabawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punch.clp 	punch7   "  ?id "  Sarabawa )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 11-2-2014
;A card puncher. [M-W]
;कार्ड छेदक यन्त्र .
(defrule punch8
(declare (salience 5500))
(id-root ?id punch)
(id-word ?id puncher)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexaka_yanwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punch.clp 	punch8   "  ?id "  Cexaka_yanwra )" crlf))
)

;"punch","V","1.CexanA"
;He punched his papers with a punching machine.
;--,"1.mukkA_mAranA"
;The boxer was repeatedly kicked && punched.
;--"2.rocaka_aMSa"
;The story told by the little boy was full of punches.
;
