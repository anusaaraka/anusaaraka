
(defrule revolve0
(declare (salience 5000))
(id-root ?id revolve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id revolving )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id parikramI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  revolve.clp  	revolve0   "  ?id "  parikramI )" crlf))
)

;"revolving","Adj","1.parikramI"
;The five star hotel has a revolving restaurant.
;
(defrule revolve1
(declare (salience 4900))
(id-root ?id revolve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revolve.clp 	revolve1   "  ?id "  GUma )" crlf))
)

;"revolve","VTI","1.GUmanA"
;His life revolves around his office
;The earth revolves round the sun.
;
;