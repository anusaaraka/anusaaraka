
;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith) 15/03/2014
;Suppose two physical quantities A and B have measured values A ± ΔA B ± ΔB respectively where ΔA and ΔB are their absolute errors.[ncert]
;मान लीजिए, कि दो भौतिक राशियों A एवं B के मापित मान क्रमशः A ± ΔA, B ± ΔB हैं ; जहाँ, ΔA एवं ΔB क्रमशः इन राशियों की निरपेक्ष त्रुटियाँ हैं.
(defrule absolute2
(declare (salience 3000))
(id-root ?id absolute)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 error)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirapekRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  absolute.clp 	absolute2   "  ?id "  nirapekRa )" crlf))
)



;**********************DEFAULT RULES*************************

(defrule absolute0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id absolute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id purA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  absolute.clp 	absolute0   "  ?id "  purA )" crlf))
)

(defrule absolute1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id absolute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parama_sixXAMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  absolute.clp 	absolute1   "  ?id "  parama_sixXAMwa )" crlf))
)

;"absolute","N","1.parama_sixXAMwa"
;I always have a desire for absolutes in this uncertain world.
;
;
;LEVEL 
;
;
;Headword : absolute
;
;Examples --
;
;"absolute","Adj","1.pUrNawayA"
;There is no absolute standard for beauty.
;sunxarawA kA koI pUrNa mAnaka nahIM hE.
;
;"2.niSciwa"-pUrNarUpa se-pUrNawayA
;You should have absolute proof of her ablity.
;hamAre pAsa usakI yogyawA kA niSciwa pramANa honA cAhiye.
;
;"3.niraMkuSa"-aniyaMwriwa-asIma-pUrNarUpa se-pUrNawayA  
;Aurangzeb was an absolute ruler. 
;OraMgajZeba eka niraMkuSa SAsaka WA.
;
;"absolute","N","1.parama_wawva"
;I always have a desire for absolutes in this uncertain world.
;muJe isa aniSciwa xuniyA meM hameSA parama_wwva kI cAhawa rahawI hE.
;
;"absolute majority","N","1.pUrNa"
;The communist party won an absolute majority.
;kamyUnista pArtI pUrNa bahumawa se jIwI.
;
;nota:-- "absolute",Sabxa ke liye saMjFA Ora viSeRaNa ke vAkyoM se nimna sUwra 
;                nikAlA jA sakawA hE.
;
;sUwra : parama[<pUrNa]  
;
;
;
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_absolute2
(declare (salience 3000))
(id-root ?id absolute)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 error)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirapekRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " absolute.clp   sub_samA_absolute2   "   ?id " nirapekRa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_absolute2
(declare (salience 3000))
(id-root ?id absolute)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 error)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirapekRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " absolute.clp   obj_samA_absolute2   "   ?id " nirapekRa )" crlf))
)
