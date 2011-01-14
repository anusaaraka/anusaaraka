
(defrule venture0
(declare (salience 5000))
(id-root ?id venture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasika_kArya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venture.clp 	venture0   "  ?id "  sAhasika_kArya )" crlf))
)

;"venture","N","1.sAhasika_kArya"
;To climb the peak during the winter months was a tough venture.
;
(defrule venture1
(declare (salience 4900))
(id-root ?id venture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venture.clp 	venture1   "  ?id "  sAhasa_kara )" crlf))
)

;"venture","VTI","1.sAhasa_karanA"
;The students ventured into the high-sea
;He ventured his opinion in the meeting
;
