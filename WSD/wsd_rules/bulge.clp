
(defrule bulge0
(declare (salience 5000))
(id-root ?id bulge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uBAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bulge.clp 	bulge0   "  ?id "  uBAra )" crlf))
)

;"bulge","N","1.uBAra"
;The bulge of the bowl was visible in the bag.
;
(defrule bulge1
(declare (salience 4900))
(id-root ?id bulge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uBara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bulge.clp 	bulge1   "  ?id "  uBara )" crlf))
)

;"bulge","VI","1.uBaranA/nikala_AnA"
;His eyes bulged with surprise
;
