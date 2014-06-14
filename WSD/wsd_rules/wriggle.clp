
(defrule wriggle0
(declare (salience 5000))
(id-root ?id wriggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parisarpaNa_gawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wriggle.clp 	wriggle0   "  ?id "  parisarpaNa_gawi )" crlf))
)

;"wriggle","N","1.parisarpaNa_gawi"
;The wriggle of the snake was aweful.
;
(defrule wriggle1
(declare (salience 100))
(id-root ?id wriggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kulabulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wriggle.clp 	wriggle1   "  ?id "  kulabulA )" crlf))
)

;"wriggle","VTI","1.kulabulAnA"
;The baby was wriggling in her arms.
;--"2.teDe_meDe_calanA"
;The cyclist wriggled along the path.
;

;@@@ Added by Pramila(BU) on 25-03-2014
;The patient is wriggling on his bed.  ;shiksharthi
;रोगी अपने बिस्तर पर लौट रहा है.
(defrule wriggle2
(declare (salience 5000))
(id-root ?id wriggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lOta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wriggle.clp 	wriggle2   "  ?id "  lOta )" crlf))
)

;@@@ Added by Pramila(BU) on 25-03-2014
;The snake wriggled through the grass.  ;shiksharthi
;साँप घास में से रेंगते हुए गया.
(defrule wriggle3
(declare (salience 5000))
(id-root ?id wriggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-through_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reMgawe_hue_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wriggle.clp 	wriggle3   "  ?id "  reMgawe_hue_jA )" crlf))
)

;@@@ Added by Pramila(BU) on 25-03-2014
;He is expert in wriggling.  ;shiksharthi
;वह बहाने बनाने में कुशल है.
(defrule wriggle4
(declare (salience 5000))
(id-root ?id wriggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-in_saMbanXI  ?id1 ?id)
(subject-subject_samAnAXikaraNa  ?sub ?id1)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAne_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wriggle.clp 	wriggle4   "  ?id "  bahAne_banA )" crlf))
)
