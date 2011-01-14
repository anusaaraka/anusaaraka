
(defrule rouse0
(declare (salience 5000))
(id-root ?id rouse)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rousing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rouse.clp  	rouse0   "  ?id "  SAnaxAra )" crlf))
)

;"rousing","Adj","1.SAnaxAra"
;She got a rousing reception in the party. 
;
(defrule rouse1
(declare (salience 4900))
(id-root ?id rouse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rouse.clp 	rouse1   "  ?id "  jAga )" crlf))
)

;"rouse","V","1.jAganA"
;Their visit roused her from her depression.
;She was roused from her sleep by the door bell ringing.
;The addition of new syllabus is bound to rouse a lot of contradiction.
;--"4.uwwejiwa_kara
;When roused my physics teacher can be quite frightening.
;The new law is bound to rouse the members of  opposition.
;
;