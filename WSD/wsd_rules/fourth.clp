
(defrule fourth0
(declare (salience 5000))
(id-root ?id fourth)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) january|february|march|april|may|june|july|august|september|october|november|december)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOWA_xina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fourth.clp 	fourth0   "  ?id "  cOWA_xina )" crlf))
)

(defrule fourth1
(declare (salience 4900))
(id-root ?id fourth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fourth.clp 	fourth1   "  ?id "  cOWA )" crlf))
)

;"fourth","Det","1.cOWA"
;He lives in the fourth house from here.
;
