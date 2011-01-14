
(defrule wrangle0
(declare (salience 5000))
(id-root ?id wrangle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrangle.clp 	wrangle0   "  ?id "  ladZAI )" crlf))
)

;"wrangle","N","1.ladZAI"
;They were involved in a wrangle over the property.
;
(defrule wrangle1
(declare (salience 4900))
(id-root ?id wrangle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXa_se_JagadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrangle.clp 	wrangle1   "  ?id "  kroXa_se_JagadZa )" crlf))
)

;"wrangle","VT","1.kroXa_se_JagadZanA"
;The brothers wrangled over the property.
;
