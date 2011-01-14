
(defrule choose0
(declare (salience 5000))
(id-root ?id choose)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) choose)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  choose.clp 	choose0   "  ?id "  meM_se )" crlf))
)

(defrule choose1
(declare (salience 4900))
(id-root ?id choose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  choose.clp 	choose1   "  ?id "  cuna )" crlf))
)

;"choose","V","1.cunanA"
;I always choose the fish over the meat courses in this restaurant
;
;
