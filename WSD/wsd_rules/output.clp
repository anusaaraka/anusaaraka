
(defrule output0
(declare (salience 5000))
(id-root ?id output)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpAxana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  output.clp 	output0   "  ?id "  uwpAxana )" crlf))
)

;"output","N","1.uwpAxana"
;The output of Bajaj is 200 vehicles per day.
;--"2.prakRepaNa"
;That bulb has an output of 200 watts.
;
(defrule output1
(declare (salience 4900))
(id-root ?id output)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakRepaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  output.clp 	output1   "  ?id "  prakRepaNa_kara )" crlf))
)

;"output","V","1.prakRepaNa_karanA"
;The computer can output uncountable bytes of information in a second.
;
