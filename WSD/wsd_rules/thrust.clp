
(defrule thrust0
(declare (salience 5000))
(id-root ?id thrust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thrust.clp 	thrust0   "  ?id "  bala )" crlf))
)

;"thrust","N","1.bala"
;He enlivened his editorials with barbed thrusts at politicians.
;
(defrule thrust1
(declare (salience 4900))
(id-root ?id thrust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Tela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thrust.clp 	thrust1   "  ?id "  Tela )" crlf))
)

;"thrust","VT","1.TelanA"
;He thrust his chin forward.
;

;;@@@   ---Added by Prachi Rathore
;Rajvir carefully [wrapped] the clay in a piece of paper and[ thrust] it into his pocket.[gyan-nidhi]
;राजवीर ने उस मिट्टी को कागज के एक टुकड़े में सावधानी पूर्वक लपेटा और उसे अपनी जेब में खिसका लिया।
(defrule thrust2
(declare (salience 5000))
(id-root ?id thrust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KisakA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thrust.clp 	thrust2   "  ?id "  KisakA_le )" crlf))
)

