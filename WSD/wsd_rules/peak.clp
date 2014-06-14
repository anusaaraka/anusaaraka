;$$$ Meaning modified by Sonam Gupta MTech IT Banasthali 2013
(defrule peak0
(declare (salience 5000))
(id-root ?id peak)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id peaked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SiKara_vAlA)) ;Modified from cotI_vAlA to SiKara_vAlA
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  peak.clp  	peak0   "  ?id "  SiKara_vAlA )" crlf))
)

;"peaked","Adj","1.cotI vAlA"
;Everest is a very high peaked mountain.
;

;$$$ Meaning modified by Sonam Gupta MTech IT Banasthali 2013
(defrule peak1
(declare (salience 4900))
(id-root ?id peak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiKara)) ;Modified from cotI to SiKara
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peak.clp 	peak1   "  ?id "  SiKara )" crlf))
)

;"peak","N","1.cotI"
;K2 is the highest peak in India.
;

;$$$ Meaning modified by Sonam Gupta MTech IT Banasthali 2013
(defrule peak2
(declare (salience 4800))
(id-root ?id peak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiKara_para_pahuzca)) ;Modified from cotI_para_pahuzca to SiKara_para_pahuzca
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peak.clp 	peak2   "  ?id "  SiKara_para_pahuzca )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;At her peak she was writing a new novel every year. [MW]
;उसके कैरियर की ऊँचाई में वह प्रत्येक वर्ष एक नया उपन्यास लिख रही थी . 
(defrule peak3
(declare (salience 5500))
(id-root ?id peak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
(kriyA-at_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kEriyara_kI_UzcAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peak.clp 	peak3   "  ?id " kEriyara_kI_UzcAI )" crlf))
)


;"peak","V","1.cotI_para_pahuzcanA"
;Land prices have peaked now-a-days.
;
