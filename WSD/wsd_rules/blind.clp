
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 8-03-2014
;Doctors think he will go blind.[oald]
;डाक्टरों को लगता है वह अंधा हो जायेगा
(defrule blind3
(declare (salience 3000))
(id-root ?id blind)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id2 ?id)
(kriyA-subject  ?id1 ?id2)
(id-word ?id1 go)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blind.clp 	blind3   "  ?id " aMXA_ho  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 8-03-2014
;She was blinded in the explosion.[oald]
;वह विस्पोट में अंधी हो गयी थी
(defrule blind4
(declare (salience 3000))
(id-root ?id blind)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(kriyA-karma  ?id ?sub)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blind.clp 	blind4   "  ?id " aMXA_ho  )" crlf))
)


;************************DEFAULT RULES**************************

(defrule blind0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blind.clp 	blind0   "  ?id "  aMXA )" crlf))
)

;"blind","Adj","1.aMXA"
;Blind to a lover's faults
;Blind hatred
;--"2.asaPala"
;A blind attempt
;--"3.banxa"
;Blind stitching
;A blind alley
;
(defrule blind1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blind.clp 	blind1   "  ?id "  aMXA )" crlf))
)

;"blind","N","1.aMXA[AdZa]"
;--"2.aMXA"
;He spent hours reading to the blind
;--"3.AdZa"
;he waited impatiently in the blind
;--"4.JilamilI"
;they had just moved in && had not put up blinds yet
;
(defrule blind2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anXA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blind.clp 	blind2   "  ?id "  anXA_kara )" crlf))
)

;"blind","VT","1.anXA_karanA"
;The criminals were punished && blinded
;
