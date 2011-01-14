
(defrule counterfeit0
(declare (salience 5000))
(id-root ?id counterfeit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  counterfeit.clp 	counterfeit0   "  ?id "  jAlI )" crlf))
)

;"counterfeit","Adj","1.jAlI/nakalI"
;A large amount of counterfeit notes have been found from the visitor.
;
(defrule counterfeit1
(declare (salience 4900))
(id-root ?id counterfeit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAlasAjZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  counterfeit.clp 	counterfeit1   "  ?id "  jAlasAjZI )" crlf))
)

;"counterfeit","N","1.jAlasAjZI"
;Some anti-social elements have put counterfeit ballot papers into the ballot box. 
;
(defrule counterfeit2
(declare (salience 4800))
(id-root ?id counterfeit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAlasAjZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  counterfeit.clp 	counterfeit2   "  ?id "  jAlasAjZI_kara )" crlf))
)

;"counterfeit","VT","1.jAlasAjZI_karanA"
;It is a crime to counterfeit notes.
;
