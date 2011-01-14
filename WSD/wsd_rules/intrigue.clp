
(defrule intrigue0
(declare (salience 5000))
(id-root ?id intrigue)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id intriguing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id luBAvanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  intrigue.clp  	intrigue0   "  ?id "  luBAvanA )" crlf))
)

;"intriguing","Adj","1.luBAvanA"
;He found her rather intriguing.
;
(defrule intrigue1
(declare (salience 4900))
(id-root ?id intrigue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Radyanwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intrigue.clp 	intrigue1   "  ?id "  Radyanwra )" crlf))
)

;"intrigue","N","1.Radyanwra"
;The princely families of Rajputs were full of intrigues.
;
(defrule intrigue2
(declare (salience 4800))
(id-root ?id intrigue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUtayukwi_raca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intrigue.clp 	intrigue2   "  ?id "  kUtayukwi_raca )" crlf))
)

;"intrigue","VTI","1.kUtayukwi_racanA"
