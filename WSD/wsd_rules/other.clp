
(defrule other0
(declare (salience 5000))
(id-root ?id other)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  other.clp 	other0   "  ?id "  xUsarA )" crlf))
)

(defrule other1
(declare (salience 4900))
(id-root ?id other)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  other.clp 	other1   "  ?id "  anya )" crlf))
)

;"other","Det","1.anya"
;Ravi && two other men came to my place last night.
;Call any other person.
;--"2.xUsarA"
;We live the other side of the river.
;--"3.bAkI"
;Give this book to Mohan && keep the others for Ram.
;
(defrule other2
(declare (salience 4800))
(id-root ?id other)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  other.clp 	other2   "  ?id "  xUsarA )" crlf))
)

;"other","Pron","1.xUsarA"
;Hameed first lifted the green book to read && then the other.
;Of the two options offered first is better than the other.
;--"2.anya"
;This place is preferable to any other.
;
(defrule other3
(declare (salience 4700))
(id-root ?id other)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  other.clp 	other3   "  ?id "  anya )" crlf))
)

;In other words ... (other is marked as adjective --JJ)

(defrule other4
(declare (salience 5000))
(id-root ?id other)
(id-root =(- ?id 1) each)
;(id-root ?id1 each)
(id-root ?id2 resemble)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) eka_xUsare))
(assert (id-H_vib_mng ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  other.clp     other4   "  ?id "  "(- ?id 1) "  eka_xUsare )" crlf))
)

