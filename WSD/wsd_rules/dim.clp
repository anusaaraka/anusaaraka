
(defrule dim0
(declare (salience 5000))
(id-root ?id dim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XuMXalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dim.clp 	dim0   "  ?id "  XuMXalA )" crlf))
)

;"dim","Adj","1.XuMXalA"
;Studying in dim light spoils the eyesight.
;
(defrule dim1
(declare (salience 4900))
(id-root ?id dim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XuMXalA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dim.clp 	dim1   "  ?id "  XuMXalA_ho )" crlf))
)

;"dim","V","1.XuMXalA_honA/karanA"
;Lights in the theatre were dimmed as the movie began.
;
