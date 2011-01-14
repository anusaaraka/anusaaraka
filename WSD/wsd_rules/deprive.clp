
(defrule deprive0
(declare (salience 5000))
(id-root ?id deprive)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id deprived )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vaMciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  deprive.clp  	deprive0   "  ?id "  vaMciwa )" crlf))
)

;"deprived","Adj","1.vaMciwa"
;She is the spokesperson for the deprived people.
;
(defrule deprive1
(declare (salience 4900))
(id-root ?id deprive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaMciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deprive.clp 	deprive1   "  ?id "  vaMciwa_kara )" crlf))
)

;"deprive","VT","1.vaMciwa karanA"
;Ram's father deprived him of his property.
;
;
