
(defrule refresh0
(declare (salience 5000))
(id-root ?id refresh)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id refreshing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wAjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  refresh.clp  	refresh0   "  ?id "  wAjA )" crlf))
)

;"refreshing","Adj","1.wAjA"
;The breeze was cool && refreshing.
;
(defrule refresh1
(declare (salience 4900))
(id-root ?id refresh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAjA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refresh.clp 	refresh1   "  ?id "  wAjA_kara )" crlf))
)

;"refresh","VT","1.wAjA_karanA"
;The long morning walk refreshed her.  
;
;