
(defrule anybody0
(declare (salience 5000))
(id-root ?id anybody)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(niReXAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anybody.clp 	anybody0   "  ?id "  koI_BI )" crlf))
)

(defrule anybody1
(declare (salience 4900))
(id-root ?id anybody)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anybody.clp 	anybody1   "  ?id "  koI )" crlf))
)

(defrule anybody2
(declare (salience 4800))
(id-root ?id anybody)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anybody.clp 	anybody2   "  ?id "  koI_BI )" crlf))
)

(defrule anybody3
(declare (salience 4700))
(id-root ?id anybody)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anybody.clp 	anybody3   "  ?id "  koI_BI )" crlf))
)

;"anybody","Pron","1.koI_BI"
;Anybody can come to the TV lounge. 
;--"2.kisI_ko_BI"
;I can't lend my book to anybody.
;
