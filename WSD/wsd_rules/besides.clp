
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-jan-2014
;Besides, he wanted the same pay and status as that of the European members of the educational service.
;साथ ही/इसके अलावा, वह शिक्षा सेवा के यूरोपीय सदस्यों की तरह ही वेतन और स्थिति चाहता था.
(defrule besides2
(declare (salience 4000)) 
(id-root 1 besides)
?mng <-(meaning_to_be_decided 1)
(id-word 1  besides)
(kriyA-kriyA_viSeRaNa  ?id1 1)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 sAWa_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  besides.clp 	besides2     1   sAWa_hI )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-jan-2014
;Besides working as a doctor, he also writes novels in his spare time.
;डाक्टर की तरह काम करने के अलावा, वह अपने खाली समय में उपन्यास भी लिखता है
(defrule besides3
(declare (salience 4000)) ;salience reduced by Garima Singh
(id-root 1 besides)
?mng <-(meaning_to_be_decided 1)
(id-word 1  besides)
(kriyA-besides_saMbanXI  ?kri 2)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 ke_alAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  besides.clp 	besides3     1   ke_alAvA )" crlf))
)

;****************DEFAULT RUL*****************************

(defrule besides0
(declare (salience 0)) ;salience reduced by Garima Singh
(id-root ?id besides)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_awirikwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  besides.clp 	besides0   "  ?id "  ke_awirikwa )" crlf))
)

;"besides","Adv","1.ke_awirikwa"
;Shiva is my eldest nephew && I have three others besides.
;

(defrule besides1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id besides)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_alAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  besides.clp 	besides1   "  ?id "  ke_alAvA )" crlf))
)

;"besides","Prep","1.ke_alAvA"
;There will be three of us for the party,besides children.
;
