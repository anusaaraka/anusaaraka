
(defrule crook0
(declare (salience 5000))
(id-root ?id crook)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id crooked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vakra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  crook.clp  	crook0   "  ?id "  vakra )" crlf))
)

;"crooked","Adj","1.vakra"
;crooked country roads
;
(defrule crook1
(declare (salience 4900))
(id-root ?id crook)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XoKebAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crook.clp 	crook1   "  ?id "  XoKebAjZa )" crlf))
)

;"crook","N","1.XoKebAjZa/CalI"
;That sales girl is a real crook.   
;--"2.eka_sire_para_mudZA_huA_dandA"
;His grand father can not  walk without crook. 
;--"3.modZa"
;We should drive carefully at deep crook.  
;--"4.aMkuSa"
;Shepherds always keep crooks with them to control the cattles. 
;
(defrule crook2
(declare (salience 4800))
(id-root ?id crook)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crook.clp 	crook2   "  ?id "  modZa )" crlf))
)

(defrule crook3
(declare (salience 4700))
(id-root ?id crook)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crook.clp 	crook3   "  ?id "  mudZa )" crlf))
)

;"crook","V","1.mudZanA[modZanA]"
;Suddenly he crooked my arm.
;--"2.corI_karanA/XoKA_xenA"
;The servant crooked Rs. 200, from my bag.                                   
;When he was about to fix a deal with the party,she crooked it away from him.
;
