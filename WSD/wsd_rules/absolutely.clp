
(defrule absolutely0
(declare (salience 5000))
(id-root ?id absolutely)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) nothing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilakula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  absolutely.clp 	absolutely0   "  ?id "  bilakula )" crlf))
)

(defrule absolutely1
(declare (salience 4900))
(id-root ?id absolutely)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNawaH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  absolutely.clp 	absolutely1   "  ?id "  pUrNawaH )" crlf))
)

;"absolutely","Adv","1.pUrNawaH"
;You are absolutely right.
;
;
