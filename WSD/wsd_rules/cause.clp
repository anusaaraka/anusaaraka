
(defrule cause0
(declare (salience 5000))
(id-root ?id cause)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cause.clp 	cause0   "  ?id "  kAraNa )" crlf))
)



;Added by Meena(5.02.10)
;All jams and sauces contain additives which may sometimes cause allergies .
;$$$ Modified by Shirisha Manju (18-03-14) Suggested by Chaitanya Sir
;changed meaning from 'kAraNa_ho' to 'kAraNa_bana'
;The bus driver's negligence caused the death of Mohan.
;बस चालक की लापरवाही मोहन की मृत्यु का कारण बनी थी।
(defrule cause1
(declare (salience 4900))
(id-root ?id cause)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (kriyA_id-object_viBakwi ?id kA))
(assert (id-wsd_root_mng ?id kAraNa_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cause.clp     cause1   "  ?id "  kAraNa_bana )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  cause.clp   cause1   "  ?id " kA )" crlf)
)
)



;$$$ Modified by Shirisha Manju (18-03-14) Suggested by Chaitanya Sir
;changed meaning from 'kAraNa_ho' to 'kAraNa_bana'
;Salience reduced by Meena(5.02.10)
(defrule cause2
(declare (salience 0))
(id-root ?id cause)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraNa_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cause.clp 	cause2   "  ?id "  kAraNa_bana )" crlf))
)

;"cause","VT","1.kAraNa_honA/uwpanna_karanA"
;Chewing tobacco can cause cancer.
;
;LEVEL 
;
;
;Headword : cause
;
;Examples --
;
;"cause"
;What was the cause of the fire?
;Aga kA kyA kAraNa WA ?
;
;Her life was devoted to the cause of justice.
;usakA jIvana nyAya Anxolana ke lie hI aMkiwa WA.
;
;<--nyAya xilAne ke liye <-- nyAya xilAne kA 'kAraNa' bananA
;
;Smoking can cause lung cancer.
;XUmrapAna se kEMsara kI bimArI ho sakawI hEM.
;
;<-- XUmrapAna kEMsara kA 'kAraNa' bana sakawA hE
;
;yahAz alaga saMrxaBa hone ke bAvajUxa eka arWa hI kI saMBAvanA hEM.
;EsA Sabxa hE, "kAraNa".
;
;wo isakA sUwra banegA :-
;
;sUwra : kAraNa
;
;
;
;
