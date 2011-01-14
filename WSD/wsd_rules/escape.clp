 (defrule escape
 (declare (salience 4900))
 (id-root ?id escape)
 ?mng <-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id verb)
 =>
  (retract ?mng)
  (assert (id-wsd_root_mng ?id BAga_jA))
  (if ?*debug_flag* then
  (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escape.clp      escape   "  ?id "  BAga_jA)" crlf))
 )
 ;"escape","VI","1.BAganA"
;The convicted murderer escaped from a high security prison
;--"2.baca_kara_BAga_jAnA"
;We escaped to our summe


 (defrule escape0
 (declare (salience 5000))
 (id-root ?id escape)
 ?mng <-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id noun)
 =>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id CutakArA))
 (if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escape.clp    escape0   "  ?id "  CutakArA )" crlf))
 )
 ;"escape","N","1.CutakArA"
;Hard work was his escape from worry
;--"2.bacAva"
;That was a narrow escape
;

