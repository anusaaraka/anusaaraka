
(defrule relish0
(declare (salience 5000))
(id-root ?id relish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relish.clp 	relish0   "  ?id "  svAxa )" crlf))
)

;"relish","N","1.svAxa"
;Hunger is the best relish for food.
;She savoured the joke with relish.
;
(defrule relish1
(declare (salience 4900))
(id-root ?id relish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relish.clp 	relish1   "  ?id "  majA_le )" crlf))
)

;"relish","VTI","1.majA_lenA"
;I would relish a sweet dish now.
;
