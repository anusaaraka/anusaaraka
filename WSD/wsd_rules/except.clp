
(defrule except0
(declare (salience 5000))
(id-root ?id except)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ---))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  except.clp 	except0   "  ?id "  --- )" crlf))
)

(defrule except1
(declare (salience 4900))
(id-root ?id except)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sirPa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  except.clp 	except1   "  ?id "  sirPa )" crlf))
)

;"except","Conj","1.sirPa"
;I could answer all the questions except for the last one.
;
(defrule except2
(declare (salience 4800))
(id-root ?id except)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko_CodZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  except.clp 	except2   "  ?id "  ko_CodZa_kara )" crlf))
)

;"except","Prep","1.ko_CodZa_kara"
;They are all there except me.
;
(defrule except3
(declare (salience 4700))
(id-root ?id except)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  except.clp 	except3   "  ?id "  CodZa )" crlf))
)

;"except","VT","1.CodZanA"
;Children under 1.are excepted from watching the movie.
;
(defrule except4
(declare (salience 4600))
(id-root ?id except)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sivAya_isake_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  except.clp 	except4   "  ?id "  sivAya_isake_ki )" crlf))
)

