
(defrule composite0
(declare (salience 5000))
(id-root ?id composite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMraciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  composite.clp 	composite0   "  ?id "  saMraciwa )" crlf))
)

(defrule composite1
(declare (salience 4900))
(id-root ?id composite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammiSra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  composite.clp 	composite1   "  ?id "  sammiSra )" crlf))
)

;"composite","Adj","1.sammiSra"
;Aluminium is a composite metal.
;
;