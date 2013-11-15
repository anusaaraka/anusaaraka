
;Added by human
(defrule record0
(declare (salience 5000))
(id-root ?id record)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 tape)
(viSeRya-on_saMbanXI ?id1 ?id) ;Replaced viSeRya-on_viSeRaNa as viSeRya-on_saMbanXI programatically by Roja 09-11-13
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rekArda_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  record.clp 	record0   "  ?id "  rekArda_karanA )" crlf))
)

(defrule record1
(declare (salience 4900))
(id-root ?id record)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBileKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  record.clp 	record1   "  ?id "  aBileKa )" crlf))
)

(defrule record2
(declare (salience 4800))
(id-root ?id record)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rajistara_mez_xarja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  record.clp 	record2   "  ?id "  rajistara_mez_xarja_kara )" crlf))
)

;"record","VT","1.rajistara_mez_xarja_karanA"
;The programme was recorded in detail.
;--"2.aMkiwa_karanA"  
;Barometer recorded a pressure of 76cm of mercury.   
;--"3.progrAma_ko_tepa_karanA"   
;Please record a programme from the radio.
;
;
