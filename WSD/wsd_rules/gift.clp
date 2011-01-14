
(defrule gift0
(declare (salience 5000))
(id-root ?id gift)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id gifted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id guNI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  gift.clp  	gift0   "  ?id "  guNI )" crlf))
)

;"gifted","Adj","1.guNI/prawiBASAlI"
;Kapil was a gifted cricketer.
;
(defrule gift1
(declare (salience 4900))
(id-root ?id gift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gift.clp 	gift1   "  ?id "  upahAra )" crlf))
)

;I recieved lots of gifts on my birthday.
;
(defrule gift2
(declare (salience 4800))
(id-root ?id gift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BeMta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gift.clp 	gift2   "  ?id "  BeMta_xe )" crlf))
)

;"gift","VT","1.BeMta_xenA"
;I gifted a necklace to my wife on our marriage anniversary.
;
