;$$$ Modified by Nandini(16-4-14)
;English and Hindi traslation added by nandini(0-0-14)
;Some politicians want more liberal trade relations with Europe.[oald]
;kuCa rAjanIwijFa yUropa ke sAWa aXika uxAravAxI vyApAra sambanXa cAhawe hEM.
(defrule liberal0
(declare (salience 5000))
(id-root ?id liberal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxAravAxI)) ; meaning change by Nandini
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liberal.clp 	liberal0   "  ?id "  uxAravaxI )" crlf))
)

(defrule liberal1
(declare (salience 4900))
(id-root ?id liberal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxAra_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liberal.clp 	liberal1   "  ?id "  uxAra_vyakwi )" crlf))
)


;"liberal","N","1.uxAra vyakwi"
;He is  a liberal.
;
;
