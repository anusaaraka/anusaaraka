
(defrule unsteady0
(declare (salience 5000))
(id-root ?id unsteady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asWira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unsteady.clp 	unsteady0   "  ?id "  asWira )" crlf))
)

;"unsteady","Adj","1.asWira"
;She is unsteady on her feet after the illness.
;
(defrule unsteady1
(declare (salience 4900))
(id-root ?id unsteady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asWira_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unsteady.clp 	unsteady1   "  ?id "  asWira_kara )" crlf))
)

;"unsteady","VT","1.asWira_kara/caMcala_kara"
;Unsteady the pendulum of the clock!
;
