
(defrule yoke0
(declare (salience 5000))
(id-root ?id yoke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gulAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yoke.clp 	yoke0   "  ?id "  gulAmI )" crlf))
)

;"yoke","N","1.gulAmI/parAXInawA/xAsawA"
;Gandhiji threw off the yoke of slavery through non-violence.  
;--"1.juA"
;The farmer ploughed the field with four yoke of oxen.
;
(defrule yoke1
(declare (salience 4900))
(id-root ?id yoke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yoke.clp 	yoke1   "  ?id "  nAWa )" crlf))
)

;"yoke","VTI","1.nAWanA"
;The farmer yoked oxen to a plough.
;
