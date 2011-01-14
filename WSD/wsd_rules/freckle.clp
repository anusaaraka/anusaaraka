
(defrule freckle0
(declare (salience 5000))
(id-root ?id freckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id freckled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ciwwe_padZe_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  freckle.clp  	freckle0   "  ?id "  ciwwe_padZe_hue )" crlf))
)

;"freckled","Adj","1.ciwwe_padZe_hue"
;Her freckled face with red hair looks odd to every one.
;
(defrule freckle1
(declare (salience 4900))
(id-root ?id freckle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciwwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  freckle.clp 	freckle1   "  ?id "  ciwwI )" crlf))
)

;"freckle","N","1.ciwwI"
;Her face && back are covered with frackles.
;
;