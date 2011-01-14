
(defrule review0
(declare (salience 5000))
(id-root ?id review)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punaravalokana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  review.clp 	review0   "  ?id "  punaravalokana )" crlf))
)

;"review","N","1.punaravalokana"
;Her case is coming up for review in june.
;You should present a review of the year's sport.
;The play got mixed reviews in the news paper.
;
(defrule review1
(declare (salience 4900))
(id-root ?id review)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  review.clp 	review1   "  ?id "  paraKa )" crlf))
)

;"review","VT","1.paraKanA"
;The play  was reviewed in the daily mail.
;
