
(defrule garden0
(declare (salience 5000))
(id-root ?id garden)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id gardening )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAgakAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  garden.clp  	garden0   "  ?id "  bAgakAma )" crlf))
)

(defrule garden1
(declare (salience 4900))
(id-root ?id garden)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxyAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  garden.clp 	garden1   "  ?id "  uxyAna )" crlf))
)

;"garden","N","1.uxyAna"
;Bangalore is called the city of gardens.
;
;