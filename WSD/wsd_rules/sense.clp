
(defrule sense0
(declare (salience 5000))
(id-root ?id sense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMvexanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sense.clp 	sense0   "  ?id "  saMvexanA )" crlf))
)

(defrule sense1
(declare (salience 4900))
(id-root ?id sense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuBava_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sense.clp 	sense1   "  ?id "  anuBava_kara )" crlf))
)
;@@@ Added by jagriti(12.12.2013)
;In these ashrams one has a sense of homecoming.[gyanidhi-corpus]
;इन आश्रमों में एक अपने पन का अनुभव होता हैं।
(defrule sense2
(declare (salience 5500))
(id-root ?id sense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 homecoming|hot|cold)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuBava ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sense.clp 	sense2   "  ?id "  anuBava )" crlf))
)

;"sense","V","1.anuBava karanA"
;Sensing his importance, Rakesh started buttering him.
;--"2.mehasUsa karanA"
;An apparatus that senses the presence of Toxic gases.
;
;
