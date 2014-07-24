
;@@@ Added by Nandini (21-11-2013) 
;He is at law school.[oxford advanced lerner dictionary]
;vaha kAnUna vixyAlaya meM hE.
(defrule law1
(declare (salience 600))
(id-root ?id law)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-against_saMbanXI  ? ?id)(subject-subject_samAnAXikaraNa  ? ?id)(kriyA-at_saMbanXI  ? ?id)(kriyA-above_saMbanXI  ? ?id)(kriyA-within_saMbanXI  ? ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAnuna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  law.clp    law1   "  ?id "  kAnuna)" crlf))
)

;===========Default-rule==============
;Added by manju 
;We can broadly describe physics as a study of the basic laws of nature and their manifestation in different natural phenomena .
(defrule law0
(declare (salience 500))
;(id-word ?id laws|law) ;commented by Nandini
(id-root ?id law)
(id-cat_coarse ?id noun)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  law.clp    law0   "  ?id "  niyama)" crlf))
)

;===========additional-examples==============
;You're breaking the law.
;It's against the law not to wear seat belts. 
;It's their job to enforce the law.
;If they entered the building they would be breaking the law.
;In Sweden it is against the law to hit a child.
;Defence attorneys can use any means within the law to get their client off.
;British schools are now required by law to publish their exam results.
;The reforms have recently become law.
;Do not think you are above the law.
