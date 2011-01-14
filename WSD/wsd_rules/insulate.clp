
(defrule insulate0
(declare (salience 5000))
(id-root ?id insulate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id insulated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AvaraNayukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  insulate.clp  	insulate0   "  ?id "  AvaraNayukwa )" crlf))
)

;"insulated","Adj","1.AvaraNayukwa"
;Insulated tapes are used in the electric wires.
;
(defrule insulate1
(declare (salience 4900))
(id-root ?id insulate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaraNa_caDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insulate.clp 	insulate1   "  ?id "  AvaraNa_caDA )" crlf))
)

;"insulate","V","1.AvaraNa_caDAnA"
;Tapes can be used to insulate electric wires.
;--"alaga_karanA"
;Guest room was insulated during winter.
;
;