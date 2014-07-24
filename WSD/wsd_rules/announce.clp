;Added by Meena(2.03.10)
;Clinton announced on Tuesday a bold new proposal . 
(defrule announce0
(declare (salience 100)); salience reduced by Garima Singh
(id-root ?id announce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GoRaNA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "    announce.clp      announce0   "  ?id "  GoRaNA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "   announce.clp       announce0   "  ?id " kA )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)18-dec-2013
;A ring at the doorbell announced Jack's arrival.[oald]
;द्वारघण्टी पर आवाज ने जैक के आगमन की सूचना दी. 
(defrule announce2
(declare (salience 3000))
(id-root ?id announce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-word ?sub ring)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcanA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "    announce.clp      announce2   "  ?id "  sUcanA_xe )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)18-dec-2013
;The government yesterday announced to the media plans to create a million new jobs.[oald]
;सरकार ने कल सञ्चार माध्यम को दस-लाख नये काम उत्तपन्न करने की योजना के बारे में  बताया  .  
(defrule announce3
(declare (salience 3000))
(id-root ?id announce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "    announce.clp      announce3   "  ?id "  bawA )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)18-dec-2013
;Would you announce the guests as they arrive?
;क्या आप अतिथि के नाम बुलायेंगे जैसे वे आयेगें 
(defrule announce4
(declare (salience 3000))
(id-root ?id announce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj guest)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_nAma_bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "    announce.clp      announce4   "  ?id "  ke_nAma_bulA )" crlf)
)
)



;*******************DEFAULT RULES*********************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)18-dec-2013
(defrule announce1
(declare (salience 0))
(id-root ?id announce)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GoRaNA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "    announce.clp      announce1   "  ?id "  GoRaNA_kara )" crlf)
)
)

