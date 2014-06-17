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

;@@@ Added by Preeti(15-4-14)
;The bad weather is causing problems for many farmers. [Oxford Advanced Learner's Dictionary]
;KarAba mOsama bahuwa sAre kisAnoM ke liye samasyAez pExA_kara rahA hE.
(defrule cause4
(declare (salience 1000))
(id-root ?id cause)
(id-word ?id causing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cause.clp 	cause4   "  ?id "  pExA_kara )" crlf))
)

;@@@ Added by Preeti(15-4-14)
;He fought for the Republican cause in the war. [Cambridge Learner’s Dictionary]
;vaha yuxXa meM gaNawAnwrika uxxeSya ke liye ladA.
(defrule cause5
(declare (salience 1000))
(id-root ?id cause)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-to_saMbanXI ? ?id ) (kriyA-for_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxxeSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cause.clp 	cause5   "  ?id "  uxxeSya )" crlf))
)

;--------------------------------- Default rules -----------------------------------

;$$$ Modified by Shirisha Manju (18-03-14) Suggested by Chaitanya Sir
;changed meaning from 'kAraNa_ho' to 'kAraNa_bana'
;Salience reduced by Meena(5.02.10)
(defrule cause2
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

(defrule cause0
(id-root ?id cause)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cause.clp    cause0   "  ?id "  kAraNa )" crlf))
)


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
