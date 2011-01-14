
(defrule recall0
(declare (salience 5000))
(id-root ?id recall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxaxASwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recall.clp 	recall0   "  ?id "  yAxaxASwa )" crlf))
)

;"recall","N","1.yAxaxASwa"
;A student is gifted with instant recall.
;
(defrule recall1
(declare (salience 4900))
(id-root ?id recall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recall.clp 	recall1   "  ?id "  yAxa_kara )" crlf))
)

;"recall","V","1.yAxa_kara[vApasa_bulA]"
(defrule recall2
(declare (salience 4800))
(id-root ?id recall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recall.clp 	recall2   "  ?id "  yAxa_A )" crlf))
)

;"recall","VT","1.yAxa_AnA"
;Try to recall the information.
;I can't recall her name at present. 
;--"2.Pira_bulAnA"
;The speaker recalled the members of Parliament for a special debate. 
;--"3.raxxa_karanA"
;I recalled my decision of going there
;
