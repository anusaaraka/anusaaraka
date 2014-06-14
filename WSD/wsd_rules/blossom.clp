
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 26-02-2014
;Their friendship blossomed into love.[oald]
;उनकी दोस्ती प्यार में बदल गयी
(defrule blossom2
(declare (salience 3000))
(id-root ?id blossom)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blossom.clp 	blossom2   "  ?id "  baxala_jA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 26-02-2014
;She has visibly blossomed over the last few months.[oald]
;वह पिछले कुछ महीनों में स्पष्ट रूप से स्वस्थ हुयी/फल-फूल गयी है.
(defrule blossom3
(declare (salience 3000))
(id-root ?id blossom)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svasWa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blossom.clp 	blossom3  "  ?id "  svasWa_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 26-02-2014
;The cherry trees blossomed early this year.[oald]
;रक्तिम पेडों पर इस वर्ष जल्दी बौर आ गयी . 
(defrule blossom4
(declare (salience 3000))
(id-root ?id blossom)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 tree)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bOra_A_jA))
(assert (kriyA_id-subject_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blossom.clp 	blossom4  "  ?id "  bOra_A_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  blossom.clp 	blossom4    "  ?id " para )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 26-02-2014
;The trees are in blossom.[oald]
;पेडों पर इस वर्ष जल्दी फूल आ गये हैं . 
(defrule blossom5
(declare (salience 3000))
(id-root ?id blossom)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?kri ?id)
(kriyA-subject  ?kri ?id1)
(id-root ?id1 tree)
(id-word =(- ?id 1) in)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) PUla_A_gaye))
(assert (kriyA_id-subject_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blossom.clp 	blossom5  "  ?id "  " (- ?id 1) "  PUla_A_gaye )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  blossom.clp 	blossom5    "  ?id " para )" crlf))
)

;******************DEFAULT RULES*****************************

(defrule blossom0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blossom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blossom.clp 	blossom0   "  ?id "  PUla )" crlf))
)

;"blossom","N","1.PUla/puRpa"
(defrule blossom1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blossom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blossom.clp 	blossom1   "  ?id "  PUla )" crlf))
)

;"blossom","VI","1.PUlanA/KilanA/samqxXa_honA/PalanA"
;Youth blossomed into maturity
;

;**********************EXAMPLES*********************

;Their friendship blossomed into love.
;She has visibly blossomed over the last few months.
;The cherry trees blossomed early this year.
;The trees are in blossom.
;She loved the spring, when the blossom was out.
