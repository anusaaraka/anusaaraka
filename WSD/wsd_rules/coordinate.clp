
(defrule coordinate0
(declare (salience 5000))
(id-root ?id coordinate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id coordinated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samanviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  coordinate.clp  	coordinate0   "  ?id "  samanviwa )" crlf))
)

;"coordinated","Adj","1.samanviwa"
;Her plan for annual day function was not very well co,ordinated.
;
(defrule coordinate1
(declare (salience 4900))
(id-root ?id coordinate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirxeSAMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coordinate.clp 	coordinate1   "  ?id "  nirxeSAMka )" crlf))
)

;"coordinate","N","1.nirxeSAMka"
;A line passing through (x,y) coordinate.
;--"2.samakakRa/samapaxa_vAlI_vaswu"
;She always coordinates her clothes with her shoes && jewellery.
;
(defrule coordinate2
(declare (salience 4800))
(id-root ?id coordinate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyojana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coordinate.clp 	coordinate2   "  ?id "  saMyojana_kara )" crlf))
)

;"coordinate","VT","1.saMyojana_karanA"
;Party workers were asked to coordinate the election campaign.
;Coordinate the painters, masons, && plumbers
;
