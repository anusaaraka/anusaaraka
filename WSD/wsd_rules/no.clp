
(defrule no0
(declare (salience 5000))
(id-root ?id no)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  no.clp 	no0   "  ?id "  nahIM )" crlf))
)

;There were no letters for you this morning.
;Sorry, I've no time.


;No politician is completely honest.
;first_word	koI_BI;nahIM	0
(defrule no1
(declare (salience 4900))
(id-root ?id no)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-cat_coarse =(+ ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  no.clp 	no1   "  ?id "  koI_BI_nahIM )" crlf))
)





;Added by Meena(14.5.10)
;We informed the new employees that no salary increase would be possible .
(defrule no2
(declare (salience 4900))
(id-root ?id no)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  no.clp        no2   "  ?id "  nahIM )" crlf))
)






(defrule no3
(declare (salience 4800))
(id-root ?id no)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  no.clp 	no3   "  ?id "  koI_nahIM )" crlf))
)

;I am sure that no restaurant can match our hostel mess





(defrule no4
(declare (salience 4700))
(id-root ?id no)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  no.clp 	no4   "  ?id "  kuCa_nahIM )" crlf))
)

;"no","Adj","1.[kuCa]_nahIM"
;We have no fruits in the house.
;She's no fool.
;--"2.nahIM{anumawa}"
;No smoking.



;
(defrule no5
(declare (salience 4600))
(id-root ?id no)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  no.clp 	no5   "  ?id "  kuCa_nahIM )" crlf))
)

;"no","Det","1.[kuCa]_nahIM"




(defrule no6
(declare (salience 4500))
(id-root ?id no)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id interjection)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  no.clp 	no6   "  ?id "  nahIM )" crlf))
)

;"no","Interj","1.nahIM"
;Is the shop open today ? `No, it isn't.'
;
