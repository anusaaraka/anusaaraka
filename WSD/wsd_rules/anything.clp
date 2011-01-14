
(defrule anything0
(declare (salience 5000))
(id-root ?id anything)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(niReXAwmaka_vAkya      )
;Test for ?str is made as argument for the gdbm_lookup_p function passed should be always a string                           (if number passed as argument gdbm_lookup_p causes to Segmentation fault)
(id-word =(+ ?id 1) ?str&:(and (not (numberp ?str))(gdbm_lookup_p "uncountable.gdbm" ?str)))
=> 
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anything.clp 	anything0   "  ?id "  kuCa_BI )" crlf))
)

(defrule anything1
(declare (salience 4900))
(id-root ?id anything)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(id-word =(+ ?id 1) ?str)
;Test for ?str is made as argument for the gdbm_lookup_p function passed should be always a string                           (if number passed as argument gdbm_lookup_p causes to Segmentation fault)
(id-word =(+ ?id 1) ?str&:(and (not (numberp ?str))(gdbm_lookup_p "uncountable.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anything.clp 	anything1   "  ?id "  kuCa )" crlf))
)

;(defrule anything2
;(declare (salience 4800))
;(id-root ?id anything)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) ?str&:(gdbm_lookup_p "uncountable.gdbm" ?str))
;;(test (get_uncountable_info ?str))
;;(test (gdbm_lookup_p "../../../anu_testing/clips/uncount.gdbm" ?str))
;=> 
;(retract ?mng)
;(assert (id-wsd_root_mng ?id kuCa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anything.clp 	anything2   "  ?id "  kuCa )" crlf))
;)

(defrule anything3
(declare (salience 4700))
(id-root ?id anything)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anything.clp 	anything3   "  ?id "  kuCa_BI )" crlf))
)

;"anything","Pron","1.kuCa_BI"
;Do you want anything to eat?
;
