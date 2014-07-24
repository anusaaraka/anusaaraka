
(defrule unify0
(declare (salience 5000))
(id-root ?id unify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unify.clp 	unify0   "  ?id "  eka_banA )" crlf))
)

;"unify","V","1.eka_banAnA"
(defrule unify1
(declare (salience 4900))
(id-root ?id unify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_rUpa_ba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unify.clp 	unify1   "  ?id "  eka_rUpa_ba )" crlf))
)

;"unify","VT","1.eka_rUpa_banA/jodZa"
;The rally was an attempt to unify the nation.
;

;@@@ Added by Prachi Rathore[28-2-14]
;Maxwell unified electromagnetism and optics with the discovery that light is an electromagnetic wave. [ncert]
;.मैक्सवेल की इस खोज ने, कि प्रकाश विद्युत चुम्बकीय तरङ्गें हैं, विद्युत चुम्बकत्व तथा प्रकाशिकी को एकीकृत किया.
(defrule unify2
(declare (salience 5050))
(id-root ?id unify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(or(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id1 PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekIkqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unify.clp 	unify2   "  ?id "  ekIkqwa_kara) )" crlf))
)

;@@@ Added by Prachi Rathore[28-2-14]
;The electromagnetic and the weak nuclear force have now been unified and are seen as aspects of a single electro-weak force. [ncert]
;विद्युत चुम्बकीय तथा दुर्बल नाभिकीय बल अब एकीकृत हो चुके हैं तथा अब इन्हें एकल "विद्युत - दुर्बल" बल के रूप में देखा जाता है...
(defrule unify3
(declare (salience 5050))
(id-root ?id unify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-aXikaraNavAcI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekIkqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unify.clp 	unify3   "  ?id "  ekIkqwa) )" crlf))
)
