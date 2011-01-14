
(defrule relay0
(declare (salience 5000))
(id-root ?id relay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rile))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relay.clp 	relay0   "  ?id "  rile )" crlf))
)

;"relay","N","1.rile`"
;--"2.prasAraNa"
;A relay station receives signals && transmitts them again with greater strength.
;--"3.cOkI_xOdZa"
;Children have participated in 4*100 metre relay race. 
;--"4.nayI_tolI"
;A new relay of bullocks was harnessed to the cart. 
;
(defrule relay1
(declare (salience 4900))
(id-root ?id relay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_batoranA_vA_jamA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relay.clp 	relay1   "  ?id "  Pira_batoranA_vA_jamA_kara )" crlf))
)

;"relay","VT","1.Pira_batoranA_vA_jamA_karanA"
;Bribes were relayed to officers via secret bank accounts.
;--"2.agrasara_kiyA/pahuzcAnA"
;Relay the manager's orders to the workers. 
;
