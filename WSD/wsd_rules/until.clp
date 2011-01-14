;Added by Meena (24.08.09)
;Let us wait until she comes .
;I have to keep running until I reach the destination . 
(defrule until0
(declare (salience 5000))
(id-root ?id until)
?mng <-(meaning_to_be_decided ?id)
(kriyA-conjunction  ?id1 ?id)
;(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaba_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  until.clp    until0   "  ?id "  jaba_waka )" crlf))
)


(defrule until1
(declare (salience 4500))
(id-root ?id until)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  until.clp 	until1   "  ?id "  waka )" crlf))
)


;
(defrule until2
(declare (salience 4900))
(id-root ?id until)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  until.clp 	until2   "  ?id "  waka )" crlf))
)

;"until","Prep","1.waka/jaba_waka"
;He works until 9 O'clock.
;
