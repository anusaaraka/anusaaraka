
(defrule copyright0
(declare (salience 5000))
(id-root ?id copyright)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASanAXikqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  copyright.clp 	copyright0   "  ?id "  prakASanAXikqwa )" crlf))
)

;"copyright","Adj","1.prakASanAXikqwa"
;He took permission to publish copyright material.
;
(defrule copyright1
(declare (salience 4900))
(id-root ?id copyright)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASanAXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  copyright.clp 	copyright1   "  ?id "  prakASanAXikAra )" crlf))
)

;"copyright","N","1.prakASanAXikAra"
;Company took advance money to copyright her poems && songs.
;
