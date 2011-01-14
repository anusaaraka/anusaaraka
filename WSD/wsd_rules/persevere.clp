
(defrule persevere0
(declare (salience 5000))
(id-root ?id persevere)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id persevering )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aXyavasAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  persevere.clp  	persevere0   "  ?id "  aXyavasAyI )" crlf))
)

;"persevering","Adj","1.aXyavasAyI"
;A few persevering climbers finally reach the top.
;
(defrule persevere1
(declare (salience 4900))
(id-root ?id persevere)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niranwara_prayawna_karawe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  persevere.clp 	persevere1   "  ?id "  niranwara_prayawna_karawe_raha )" crlf))
)

;"persevere","V","1.niranwara_prayawna_karawe_rahanA"
;--"2.niranwara_prayawna_karanA"
;If you persevere you will succeed.
;
