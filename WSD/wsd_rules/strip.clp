;@@@ Added by jagriti(11.2.2014)
;The robbers stripped all his money.[rajpal]
;डाकुओं ने उसका सब पैसा छीन लिया . 
(defrule strip0
(declare (salience 5000))
(id-root ?id strip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 money|goods|right|honour|property)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CIna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strip.clp 	strip0   "  ?id "  CIna_le )" crlf))
)
;@@@ Added by jagriti(11.2.2014)
;According to the court order he has to strip the house.[rajpal]
;न्यायालय के आदेश के अनुसार उसको घर खली करना है . 
(defrule strip1
(declare (salience 4900))
(id-root ?id strip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 room|house|hostel)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KalI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strip.clp 	strip1   "  ?id "  KalI_kara )" crlf))
)
;@@@ Added by jagriti(11.2.2014)
;To strip an engine.[rajpal]
; इंजन खोल देना . 
(defrule strip2
(declare (salience 4800))
(id-root ?id strip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 engine|machine)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kola_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strip.clp 	strip2   "  ?id "  Kola_xe )" crlf))
)

;....Default rule.......
(defrule strip3
(declare (salience 100))
(id-root ?id strip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strip.clp 	strip3   "  ?id "  pattI )" crlf))
)

;"strip","N","1.pattI"
;cut the paper into strips for decoration.
;--"2.Puta-bAla_tIma_ke_saxasyoM_ke_kapadZe"
;Indians are playing in blue && white strips.
;--"3._He_owns_a_cloth_store_out_on_the_strip"
;
(defrule strip4
(declare (salience 100))
(id-root ?id strip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZe_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strip.clp 	strip4   "  ?id "  kapadZe_uwAra )" crlf))
)

;"strip","V","1.kapadZe_uwAranA"
;Everybody stripped off in bathroom.
;--"2.naMgA_karanA"
;Our land is stripped off trees.
;--"3.haTAnA"
;The inspector was stripped off his rank.
;
