
(defrule darken0
(declare (salience 5000))
(id-root ?id darken)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  darken.clp 	darken0   "  ?id "  kAlA_ho_jA )" crlf))
)

(defrule darken1
(declare (salience 4900))
(id-root ?id darken)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  darken.clp 	darken1   "  ?id "  kAlA_kara_xe )" crlf))
)

;"darken","V","1.kAlA_ho_jAnA[kara_xenA]"
;The sky darkened
;The screen darkened
;A scandal that darkened the family's good name
;--"2.azXerA_honA[karanA]"
;Darken a room
;
