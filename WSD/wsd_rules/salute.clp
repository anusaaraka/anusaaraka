
(defrule salute0
(declare (salience 5000))
(id-root ?id salute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id namaskAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  salute.clp 	salute0   "  ?id "  namaskAra )" crlf))
)

;"salute","N","1.namaskAra/aBivAxana/salAmI"
;The officer returned the sergeant's salute.  
;
(defrule salute1
(declare (salience 4900))
(id-root ?id salute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBivAxana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  salute.clp 	salute1   "  ?id "  aBivAxana_kara )" crlf))
)

;"salute","V","1.aBivAxana_karanA"
;Priya stepped back && saluted the national flag.
;
