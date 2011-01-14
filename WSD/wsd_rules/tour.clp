
(defrule tour0
(declare (salience 5000))
(id-root ?id tour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tour.clp 	tour0   "  ?id "  yAwrA )" crlf))
)

;"tour","N","1.yAwrA"
;We went on a tour in southern India.
;The orchestra is currently on tour in india.
;The children made a tour of the museum .
;
(defrule tour1
(declare (salience 4900))
(id-root ?id tour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tour.clp 	tour1   "  ?id "  xOrA_kara )" crlf))
)

;"tour","VI","1.xOrA_karanA"
;The Indian cricket team will be touring the West Indies next summer.
;
