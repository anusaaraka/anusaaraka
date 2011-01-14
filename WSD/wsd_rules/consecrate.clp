
(defrule consecrate0
(declare (salience 5000))
(id-root ?id consecrate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id consecrated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id arpiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  consecrate.clp  	consecrate0   "  ?id "  arpiwa )" crlf))
)

;"consecrated","Adj","1.arpiwa"
;Homi Jehangir Babha led a life consecrated to science
;
(defrule consecrate1
(declare (salience 4900))
(id-root ?id consecrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arpaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consecrate.clp 	consecrate1   "  ?id "  arpaNa_kara )" crlf))
)

;"consecrate","VT","1.arpaNa_karanA"
;Homi Jehangir Babha consecrated his life to science.
;
;
