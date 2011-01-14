
(defrule kindred0
(declare (salience 5000))
(id-root ?id kindred)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sajAwIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kindred.clp 	kindred0   "  ?id "  sajAwIya )" crlf))
)

;"kindred","Adj","1.sajAwIya"
;They belong to the same kindred.
;--"2.saxqSa"
;My brother && his friend are kindred souls.
;
(defrule kindred1
(declare (salience 4900))
(id-root ?id kindred)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id riSwexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kindred.clp 	kindred1   "  ?id "  riSwexAra )" crlf))
)

;"kindred","N","1.riSwexAra"
;They had a get-together with their kindred.
;
