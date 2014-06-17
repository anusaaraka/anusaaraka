;"banking","N","1.mahAjanI"
;Sita choose banking as a career.
;
;
(defrule bank0
(declare (salience 5000))
(id-root ?id bank)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BarosA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bank.clp	bank0  "  ?id "  " ?id1 "  BarosA_kara  )" crlf))
)

;One should not bank on the strangers.
;ajanabiyoM para BarosA nahIM karanA cAhie
(defrule bank1
(declare (salience 4900))
(id-root ?id bank)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id banking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mahAjanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bank.clp  	bank1   "  ?id "  mahAjanI )" crlf))
)

(defrule bank2
(declare (salience 4800))
(id-root ?id bank)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 burrow )
(viSeRya-in_saMbanXI ?id1 ?id) ;Replaced viSeRya-in_viSeRaNa as viSeRya-in_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bank.clp 	bank2   "  ?id "  kinArA )" crlf))
)

;Crocodiles dig burrows in the banks
(defrule bank3
(declare (salience 4700))
(id-root ?id bank)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) on)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bank.clp 	bank3   "  ?id "  kinArA )" crlf))
)

(defrule bank4
(declare (salience 4600))
(id-root ?id bank)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) along)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bank.clp 	bank4   "  ?id "  kinArA )" crlf))
)

(defrule bank5
(declare (salience 0)); salience reduced by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)9-dec-2013
(id-root ?id bank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bEMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bank.clp 	bank5   "  ?id "  bEMka )" crlf))
)

(defrule bank6
(declare (salience 4400))
(id-root ?id bank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bEMka_mez_rUpayA_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bank.clp 	bank6   "  ?id "  bEMka_mez_rUpayA_raKa )" crlf))
)

;"bank","V","1.bEMka_mez_rUpayA_raKanA"
;Ram banks his money for safety.


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)9-dec-2013
;On reaching Gangnani, Aditya jumped down from the bus and went to the bank of the Ganga.
;गंगनानी पहुँचने पर, आदित्य बस पर से  कूदा और गंगा के तट पर गया . 
(defrule bank7
(declare (salience 4600))
(id-root ?id bank)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
;(viSeRya-det_viSeRaNa  ?id1 ?id2)
;(id-word ?id2 the)
(id-word ?id1 river|ganga)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bank.clp 	bank7   "  ?id "  wata )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)9-dec-2013
;Driving at this speed on a banked road will cause little wear and tear of the tyres.[ncert]
;इस चाल से ढालू सडक पर कार चलाने पर कार के टायरों की कम घिसाई होती है.
(defrule bank8
(declare (salience 4600))
(id-root ?id bank)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 road)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAlU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bank.clp 	bank8   "  ?id "  DAlU )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bank8
(declare (salience 4600))
(id-root ?id bank)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 road)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAlU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bank.clp   sub_samA_bank8   "   ?id " DAlU )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bank8
(declare (salience 4600))
(id-root ?id bank)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 road)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAlU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bank.clp   obj_samA_bank8   "   ?id " DAlU )" crlf))
)
