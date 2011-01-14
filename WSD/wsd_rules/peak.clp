
(defrule peak0
(declare (salience 5000))
(id-root ?id peak)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id peaked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cotI_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  peak.clp  	peak0   "  ?id "  cotI_vAlA )" crlf))
)

;"peaked","Adj","1.cotI vAlA"
;Everest is a very high peaked mountain.
;
(defrule peak1
(declare (salience 4900))
(id-root ?id peak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cotI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peak.clp 	peak1   "  ?id "  cotI )" crlf))
)

;"peak","N","1.cotI"
;K2 is the highest peak in India.
;
(defrule peak2
(declare (salience 4800))
(id-root ?id peak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cotI_para_pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peak.clp 	peak2   "  ?id "  cotI_para_pahuzca )" crlf))
)

;"peak","V","1.cotI_para_pahuzcanA"
;Land prices have peaked now-a-days.
;
