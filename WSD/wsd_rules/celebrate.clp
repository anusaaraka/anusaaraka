;@@@ Added by Shirisha Manju 30-4-14  -- Suggested by Chaitanya Sir
;Everyone celebrates Holi festival.
;hara koI Holi wyOhAra manAwA hE.
(defrule celebrate0
(declare (salience 4900))
(id-root ?id celebrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id  verb)
(kriyA-object  ?id ?obj)
(id-root ?obj festival)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  celebrate.clp    celebrate0   "  ?id "  manA )" crlf))
)

;@@@ Added by Shirisha Manju 30-4-14  -- Suggested by Chaitanya Sir
(defrule celebrate1
(id-root ?id celebrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id  verb)
(not (kriyA-object  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsava_manA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  celebrate.clp    celebrate1   " ?id "  uwsava_manA )" crlf))
)


