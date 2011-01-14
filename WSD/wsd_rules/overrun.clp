
(defrule overrun0
(declare (salience 5000))
(id-root ?id overrun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muzha_waka_Bara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overrun.clp 	overrun0   "  ?id "  muzha_waka_Bara_jA )" crlf))
)

;"overrun","VI","1.muzha_waka_Bara_jAnA"
;--"2.bAhara_nikalanA"
;--"3.aXika_honA"
;
(defrule overrun1
(declare (salience 4900))
(id-root ?id overrun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overrun.clp 	overrun1   "  ?id "  PEla_jA )" crlf))
)

;"overrun","VT","1.PEla_jAnA"
;The place was overrun by uninvited audience.
;--"2.baDZa_jAnA"
;The seminar was overrun by ten minutes
;
