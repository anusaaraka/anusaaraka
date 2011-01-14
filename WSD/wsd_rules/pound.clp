
(defrule pound0
(declare (salience 5000))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pounding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Xvani))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pound.clp  	pound0   "  ?id "  Xvani )" crlf))
)

;"pounding","N","1.Xvani"
;There was a consistent pounding in his head.
;
(defrule pound1
(declare (salience 4900))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pONda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound1   "  ?id "  pONda )" crlf))
)

;"pound","N","1.pONda{eka_mApa}"
;I have twenty pounds in my pocket. 
;Apples are sold by the pound.
;
(defrule pound2
(declare (salience 4800))
(id-root ?id pound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pound.clp 	pound2   "  ?id "  mAra )" crlf))
)

;"pound","V","1.mAranA"
;Someone was pounding at the door.
;--"2.XadakanA"
;My heart was pounding.
;
