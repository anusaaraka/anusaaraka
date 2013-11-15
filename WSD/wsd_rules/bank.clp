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
(declare (salience 4500))
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
;
;
