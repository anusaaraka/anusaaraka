
(defrule overnight0
(declare (salience 5000))
(id-root ?id overnight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAwa_Bara_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overnight.clp 	overnight0   "  ?id "  rAwa_Bara_kA )" crlf))
)

;"overnight","Adj","1.rAwa_Bara_kA"
;Their flight has an overnight stop at Germany
;

;$$$ Modified by Pramila(BU) on 18-02-2014
;He stayed overnight with his friend.  ;shiksharthi
;वह रात भर अपने मित्र के साथ ठहरा.
;We all stayed overnight at our friend's place    [old clp]
;हम सब रात भर हमारे मित्र के घर ठहरे.
(defrule overnight1
(declare (salience 4900))
(id-root ?id overnight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(or(kriyA-at_saMbanXI  ?kri ?id1)(kriyA-with_saMbanXI  ?kri ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAwa_Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overnight.clp 	overnight1   "  ?id "  rAwa_Bara )" crlf))
)

;"overnight","Adv","1.rAwa_Bara"
;We all stayed overnight at our friend's place
;--"2.sahasA"
;The singer became popular overnight
;

;@@@ added by Pramila(BU) on 18-02-2014
;He became millionaire overnight.  ;shiksharthi
;वह रातोंरात लखपति बन गया.
(defrule overnight2
(declare (salience 100))
(id-root ?id overnight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAwoMrAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overnight.clp 	overnight2   "  ?id "  rAwoMrAwa )" crlf))
)
