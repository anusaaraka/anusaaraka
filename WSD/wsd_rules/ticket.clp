
(defrule ticket0
(declare (salience 5000))
(id-root ?id ticket)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tikata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ticket.clp 	ticket0   "  ?id "  tikata )" crlf))
)

;"ticket","N","1.tikata"
;He gave me a ticket for the show .
;--"2.lebala"
;A ticket is attached to every item you purchase.
;
(defrule ticket1
(declare (salience 4900))
(id-root ?id ticket)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tikata_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ticket.clp 	ticket1   "  ?id "  tikata_xe )" crlf))
)

;"ticket","V","1.tikata_xe"
;The motorists was given a ticket for rash driving.
;
