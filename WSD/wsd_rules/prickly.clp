
(defrule prickly0
(declare (salience 5000))
(id-root ?id prickly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAztexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prickly.clp 	prickly0   "  ?id "  kAztexAra )" crlf))
)

(defrule prickly1
(declare (salience 4900))
(id-root ?id prickly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAztexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prickly.clp 	prickly1   "  ?id "  kAztexAra )" crlf))
)

;"prickly","Adj","1.kAztexAra"
;Be careful! The tree is a bit prickily.
;--"2.JunaJunI pExA karane vAlA"
;Avoid going out in such prickly head.
;
;
