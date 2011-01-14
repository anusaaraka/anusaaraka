
(defrule void0
(declare (salience 5000))
(id-root ?id void)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rikwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  void.clp 	void0   "  ?id "  rikwa )" crlf))
)

;"void","Adj","1.rikwa"
;Her face was void of all emotions
;
(defrule void1
(declare (salience 4900))
(id-root ?id void)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SUnya_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  void.clp 	void1   "  ?id "  SUnya_sWAna )" crlf))
)

;"void","N","1.SUnya_sWAna"
;After climbing he found that below him there was nothing but a void
;His wife's death created a void in his life.
;
(defrule void2
(declare (salience 4800))
(id-root ?id void)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avEXAnika_GoRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  void.clp 	void2   "  ?id "  avEXAnika_GoRiwa_kara )" crlf))
)

;"void","VI","1.avEXAnika_GoRiwa_karanA"
;The authorities had to void his passport
;
