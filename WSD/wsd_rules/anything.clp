
(defrule anything0
(declare (salience 5000))
(id-root ?id anything)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(niReXAwmaka_vAkya      )
;Test for ?str is made as argument for the gdbm_lookup_p function passed should be always a string                           (if number passed as argument gdbm_lookup_p causes to Segmentation fault)
(id-word =(+ ?id 1) ?str&:(and (not (numberp ?str))(gdbm_lookup_p "uncountable.gdbm" ?str)))
=> 
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anything.clp 	anything0   "  ?id "  kuCa_BI )" crlf))
)

(defrule anything1
(declare (salience 4900))
(id-root ?id anything)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(id-word =(+ ?id 1) ?str)
;Test for ?str is made as argument for the gdbm_lookup_p function passed should be always a string                           (if number passed as argument gdbm_lookup_p causes to Segmentation fault)
(id-word =(+ ?id 1) ?str&:(and (not (numberp ?str))(gdbm_lookup_p "uncountable.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anything.clp 	anything1   "  ?id "  kuCa )" crlf))
)

;(defrule anything2
;(declare (salience 4800))
;(id-root ?id anything)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) ?str&:(gdbm_lookup_p "uncountable.gdbm" ?str))
;;(test (get_uncountable_info ?str))
;;(test (gdbm_lookup_p "../../../anu_testing/clips/uncount.gdbm" ?str))
;=> 
;(retract ?mng)
;(assert (id-wsd_root_mng ?id kuCa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anything.clp 	anything2   "  ?id "  kuCa )" crlf))
;)



;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)09-jan-2014
;The hotel was anything but cheap.[oald]
;होटल बिलकुल भी सस्ता नहीं है
(defrule anything5
(declare (salience 5000)) 
(id-root ?id anything)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkya_viBakwi  ?id2 =(+ ?id 1))
(id-word =(+ ?id 1) but)
(subject-subject_samAnAXikaraNa  ?sub ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) bilakula_BI_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " anything.clp	anything5  "  ?id "  " (+ ?id 1) "  bilakula_BI_nahIM  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)09-jan-2014
;I wouldn't give it up for anything.[oald]
;मैं इसे किसी भी चीज के लिये नहीं छोड़ूगाँ
(defrule anything6
(declare (salience 5000)) 
(id-root ?id anything)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?kri ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_BI_cIja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anything.clp 	anything6   "  ?id "  kisI_BI_cIja )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)09-jan-2014
;He isn't anything like my first boss.[oald]
;वह मेरे प्रथम बॉस की तरह बिलकुल भी नहीं है . 
(defrule anything7
(declare (salience 5000)) 
(id-root ?id anything)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?sub ?id)
(viSeRya-like_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilakula_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anything.clp 	anything7   "  ?id "  bilakula_BI  )" crlf))
)

;*****************DEFAULT RULES***************************************

(defrule anything3
(declare (salience 0)) ; salience reduced by Garima Singh
(id-root ?id anything)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anything.clp 	anything3   "  ?id "  kuCa_BI )" crlf))
)

;"anything","Pron","1.kuCa_BI"
;Do you want anything to eat?
;
;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith)08-jan-2014
(defrule anything4
(declare (salience 0))
(id-root ?id anything)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anything.clp 	anything4  "  ?id "  kuCa_BI )" crlf))
)
