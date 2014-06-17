;@@@ Added by Shirisha Manju 08-05-14 -------- Suggested by Chaitanya Sir
;The President's appeal is that the citizens should keep peace and order. 
;The President has announced a plan to create new jobs. 
;rARtrapawi ne naye kAma uwwapanna karane ke lie yojanA kI GoRaNA kI hE.
(defrule president0
(declare (salience 80))
(id-root ?id president)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-original_word ?id President|President's)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rARtrapawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  president.clp     president0   "  ?id "  rARtrapawi )" crlf))
)

;@@@ Added by Shirisha Manju 08-05-14 -------- Suggested by Chaitanya Sir
(defrule president1
(id-root ?id president)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXyakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  president.clp     president1   "  ?id "  aXyakRa )" crlf))
)


