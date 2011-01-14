
(defrule amiss0
(declare (salience 5000))
(id-root ?id amiss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  amiss.clp 	amiss0   "  ?id "  galawa )" crlf))
)

;"amiss","Adj","1.galawa"
;Every thing seems to be amiss -what to do?
;
(defrule amiss1
(declare (salience 4900))
(id-root ?id amiss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  amiss.clp 	amiss1   "  ?id "  galawa )" crlf))
)

;"amiss","Adv","1.galawa"
;Something seems to be amiss that I couldn't understand.
;
