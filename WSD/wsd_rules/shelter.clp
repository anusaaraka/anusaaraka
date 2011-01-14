
(defrule shelter0
(declare (salience 5000))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 take)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASraya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelter.clp 	shelter0   "  ?id "  ASraya )" crlf))
)

(defrule shelter1
(declare (salience 4900))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id surakRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelter.clp 	shelter1   "  ?id "  surakRA )" crlf))
)

;"shelter","N","1.surakRA"
;I need shelter for one night.
;--"2.ASraya"
;I gave shelter to a puppy.
;
