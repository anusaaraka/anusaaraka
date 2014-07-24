;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 6-dec-2013
;This book belongs to Sarah.[cambridge]
;यह पुस्तक सराह का है . 
;You shouldn't take what doesn't belong to you.[cambridge]
; जो आपका नहीं है वो आपको नहीं लेना चाहिए  . 
;They do not belong to us.[gyananidhi]
;वह मेरा नहीं है
(defrule belong0
(declare (salience 5000))
(id-root ?id belong)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?id1); Added by Garima Singh
;(id-word =(+ ?id 1) to);commented by Garima Singh
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE)); meaning changed by Garima Singh from 'ka_hE' to 'hE' and added a vibhakti below.02-jan-2013
(assert (kriyA_id-object_viBakwi ?id kA));added by Garima Singh.02-jan-2013
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  belong.clp 	belong0   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  belong.clp      belong0   "  ?id " kA )" crlf)
)
)



;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 6-dec-2013
;They belong to the same chess club.[cambridge]
;वे एक ही शतरञ्ज क्लब के सदसय है
(defrule belong2
(declare (salience 5000))
(id-root ?id belong)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?id1)
(id-word ?id1 organization|group|club|party|family)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saxasya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  belong.clp 	belong2   "  ?id "  saxasya )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 6-dec-2013
;Where do these spoons belong?
;ये चम्मचें कहाँ रखते है? 
(defrule belong3
(declare (salience 5000))
(id-root ?id belong)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-last_word ?id belong)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  belong.clp 	belong3   "  ?id "  raKa )" crlf))
)


;******************DEFAULT RULES**************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 6-dec-2013
(defrule belong1
(declare (salience 0))
(id-root ?id belong)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samabanXa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  belong.clp 	belong1   "  ?id "  samabanXa_raKa )" crlf))
)


;*********************EXAMPLES*****************************

;This table belongs in the sitting-room.
;Where do these spoons belong?
;These papers belong with the others.
;After three years in Cambridge, I finally feel as if I belong here.
;This book belongs to Sarah.
;You shouldn't take what doesn't belong to you.
;They belong to the same chess club.
