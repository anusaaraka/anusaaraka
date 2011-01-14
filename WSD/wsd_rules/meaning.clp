 (defrule meaning0
 (declare (salience 4500))
 (id-root ?id meaning)
 (id-word =(- ?id 1) no)
 (kriyA-object ?kriyA ?id)
 ?mng <-(meaning_to_be_decided ?id)
 =>
  (retract ?mng)
  (assert (id-wsd_word_mng ?id koI_arWa))
  (if ?*debug_flag* then
      (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  meaning.clp     meaning0   "  ?id " koI_arWa  )" crlf))
)



