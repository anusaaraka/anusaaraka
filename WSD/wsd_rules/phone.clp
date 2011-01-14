
(defrule phone0
(declare (salience 5000))
(id-root ?id phone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id telIPZona))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  phone.clp 	phone0   "  ?id "  telIPZona )" crlf))
)

;"phone","N","1.telIPZona"
;I have talked to my friend on phone.




;Added by Meena(25.9.09)
;I tried phoning but there was no answer . 
(defrule phone1
(declare (salience 4900))
(id-root ?id phone)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PZona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  phone.clp     phone1   "  ?id "  PZona_kara )" crlf))
)


;
(defrule phone2
(declare (salience 4900))
(id-root ?id phone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PZona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  phone.clp 	phone2   "  ?id "  PZona_kara )" crlf))
)

;"phone","V","1.PZona_karanA"
;My father asked me to phone for a taxi.
;
