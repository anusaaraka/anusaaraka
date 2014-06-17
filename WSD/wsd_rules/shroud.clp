;@@@ Added by jagriti(13.3.2014)
;To shroud the dead body.[rajpal]
;शव को कफन ओढ़ाना . 
(defrule shroud2
(declare (salience 5000))
(id-root ?id shroud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 body)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaPZana_oDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shroud.clp 	shroud2   "  ?id "  kaPZana_oDZA)" crlf))
)
(defrule shroud0
(declare (salience 100))
(id-root ?id shroud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaPZana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shroud.clp 	shroud0   "  ?id "  kaPZana )" crlf))
)

;"shroud","N","1.kaPZana"
;She didn't have money to buy a shroud for her husband.
;--"2.paraxA"
;The shroud of clouds concealed the sun.
;--"3.barAMdZala"
;The shrouds broke && the mast of the ship was no more useful due to the storm.
;
(defrule shroud1
(declare (salience 100))
(id-root ?id shroud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shroud.clp 	shroud1   "  ?id "  CipA )" crlf))
)

;"shroud","V","1.CipAnA"
;It is a murder shrouded in mystery.
;
