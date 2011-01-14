

;Added by sheetal (09-09-09)
;I do not like the idea of living so far away from my family .
(defrule from_cmp
(declare (salience 5000))
(id-word ?id from)
(id-word =(- ?id 3) so)
(id-word =(- ?id 2) far)
(id-word =(- ?id 1) away)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id =(- ?id 1) =(- ?id 2) =(- ?id 3) se_iwanI_xUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  from.clp      from_cmp   "  ?id " "(- ?id 1) " "(- ?id 1) " " (- ?id 1) "  se_iwanI_xUra)" crlf)
)
)



(defrule from0
(declare (salience 4990))
(id-root ?id from)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) inside)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  from.clp 	from0   "  ?id "  - )" crlf))
)

(defrule from1
(declare (salience 4900))
(id-root ?id from)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) number|amount|magnitude|figure|measure|quantity|phone number|telephone number|numeral|whole|unit|identification number )
(id-word =(+ ?id 1) number|amount|magnitude|figure|measure|quantity|phone number|telephone number|numeral|whole|unit|identification number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_GatanA_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  from.clp 	from1   "  ?id "  se_GatanA_se )" crlf))
)

(defrule from2
(declare (salience 4800))
(id-root ?id from)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  from.clp 	from2   "  ?id "  se )" crlf))
)

;"from","Prep","1.se"
;The worker comes home from the factory.
;She shows interest in music from childhood.
;--"2.ke_yahAz_se"
;I got a letter from my brother.
;
