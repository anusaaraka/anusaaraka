
(defrule one0
(declare (salience 5000))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) must)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hara_eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one0   "  ?id "  hara_eka )" crlf))
)

;One must go there at least once.
;Added by human

(defrule one1
(declare (salience 4900))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ones )
(id-cat_coarse =(- ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAlA))
(assert (id-wsd_number ?id p))  ;Modified number by Roja (09-11-10)The little ones are hopping and jumping merrily.
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one1   "  ?id "  vAlA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  one.clp       one1   "  ?id " p )"crlf))
)

(defrule one2
(declare (salience 4800))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ones )
(id-word =(- ?id 1) which)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAlA))
(assert (id-wsd_number ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one2   "  ?id "  vAlA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  one.clp       one2   "  ?id "  s )" crlf))
)

(defrule one22
(declare (salience 4980))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) which)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAlA))
(assert (id-wsd_number ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp    one22   "  ?id "  vAlA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  one.clp    one22   "  ?id " s )" crlf))
)

;
;Added by human
(defrule one3
(declare (salience 4700))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) adjective)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one3   "  ?id "  eka )" crlf))
)

;At last one of them ... last is marked as an adj. 
;To handle this case, above rule is added.
(defrule one4
(declare (salience 4600))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one4   "  ?id "  vAlA )" crlf))
)

(defrule one5
(declare (salience 4500))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one5   "  ?id "  koI_BI )" crlf))
)

; Order of the previous two rules is important
(defrule one6
(declare (salience 4400))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) twenty)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikkIsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one6   "  ?id "  ikkIsa )" crlf))
)

(defrule one7
(declare (salience 4300))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) thirty)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikwIsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one7   "  ?id "  ikwIsa )" crlf))
)

(defrule one8
(declare (salience 4200))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) forty)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikwAlIsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one8   "  ?id "  ikwAlIsa )" crlf))
)

(defrule one9
(declare (salience 4100))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) fifty)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikAvana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one9   "  ?id "  ikAvana )" crlf))
)

(defrule one10
(declare (salience 4000))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) sixty)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iksaTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one10   "  ?id "  iksaTa )" crlf))
)

(defrule one11
(declare (salience 3900))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) seventy)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikhawara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one11   "  ?id "  ikhawara )" crlf))
)

(defrule one12
(declare (salience 3800))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) eighty)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one12   "  ?id "  ikAsI )" crlf))
)

(defrule one13
(declare (salience 3700))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) ninety)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikkAnnava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one13   "  ?id "  ikkAnnava )" crlf))
)

;I liked the red one; The blue one is good.
(defrule one14
(declare (salience 3600))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id avy)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one14   "  ?id "  eka )" crlf))
)

(defrule one15
(declare (salience 3500))
(id-root ?id one)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  one.clp 	one15   "  ?id "  eka )" crlf))
)

;"one","Det","1.eka"
;I have one nice pen.
;
;
