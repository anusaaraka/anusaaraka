
(defrule burnish0
(declare (salience 5000))
(id-root ?id burnish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burnish.clp 	burnish0   "  ?id "  camaka )" crlf))
)

;"burnish","VI","1.camakanA/JalakanA"
(defrule burnish1
(declare (salience 4900))
(id-root ?id burnish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burnish.clp 	burnish1   "  ?id "  camakA )" crlf))
)

;"burnish","VT","1.camakAnA/mAzjanA/JalakAnA"
;Women in the village proudly burnish their brass utensils everyday.
;
