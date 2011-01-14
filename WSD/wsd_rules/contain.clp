
(defrule contain0
(declare (salience 5000))
(id-root ?id contain)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id contained )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMwuliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  contain.clp  	contain0   "  ?id "  saMwuliwa )" crlf))
)

;"contained","Adj","1.saMwuliwa"
;Socrates was contained throughout his trial.
;



;Added by Meena(5.02.10)
;All jams and sauces contain additives which may sometimes cause allergies .
(defrule contain1
(declare (salience 4900))
(id-root ?id contain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(kriyA-object ?id ?id2)
(id-word ?id2 additives)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA_ho))
(assert (kriyA_id-subject_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contain.clp 	contain1   "  ?id "  milA_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  contain.clp   contain1   "  ?id " meM )" crlf)
)
)




;Added by Meena(10.5.10)
;The box contained many books , some of which were badly damaged . 
(defrule contain2
(declare (salience 4900))
(id-root ?id contain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(kriyA-object ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contain.clp   contain2   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  contain.clp   contain2   "  ?id " meM )" crlf)
)
)




;Salience reduced by Meena(5.02.10)
(defrule contain3
(declare (salience 0))
(id-root ?id contain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yukwa_ho))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contain.clp   contain3   "  ?id "  yukwa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  contain.clp   contain3   "  ?id " se )" crlf)
)
)

;"contain","V","1.[se]_yukwa_ho"
;default_sense && category=verb	se_yukwa_ho	0
;"contain","VT","1.se_yukwa_honA"
;This book contains 100 fairy tales.
;--"2.atAnA/XAraNa_karanA"
;How much milk can this vessel contain?
;--"3.WAmanA"
;Contain your anger.
;--"4.sammiliwa_karanA"
;The college governing body contained twelve members.
;--"5.pUrNawaH_viBAjiwa{saMKyA}_honA"
;24 contains 6
;
;LEVEL 
;Headword : contain
;
;Examples --
;
;"contain","VT","1.meM_honA"<---se_yukwa_honA
;This book contains 100 fairy tales.
;isa puswaka meM 100 parIkaWAez hEM.
;--"2.atAnA/XAraNa_karanA"
;How much milk can this vessel contain?
;isa barwana meM kiwanA xUXa ategA?
;--"3.WAmanA"
;Contain your anger.
;apane gusse ko WAmoM.
;--"4.sammiliwa_karanA"
;The college governing body contained twelve members.
;mahAvixyAlaya kI praSAsanika samiwi meM bAraha saxasya sammiliwa hE.
;--"5.pUrNawaH_viBAjiwa{saMKyA}_honA"
;24 contains 6
;24 6 se pUrNawaH viBAjiwa hE.
;
;
;ukwa uxAharaNoM meM se eka arWa jo uBara kara AwA hE vaha 'WAmanA' hE. jo WamawA hE use
;WAmane ke liye kisI aXikaraNa kI apekRA howI hE . isa aXikaraNa ke WAmane kI kRamawA
;ke kAraNa 'meM_honA', 'atane', 'sammiliwa_hone' Ora 'pUrNawaH viBAjiwa' hone ke BAva 
;prajaniwa hue lagawe hEM. jo WAmawA hE vaya 'yukwa_howA' hE. uxAharaNa ke liye puswaka 
;kaWAoM se yukwa hE.
;
;awaH isakA anwarnihiwa sUwra kuCa nimnaprakAra xiKAyA jA sakawA hE -
;
;anwarnihiwa sUwra ;
;
;
;                          WAmanA----(karwA)---yukwa_honA
;                            |
;                         (aXikaraNa)
;                            |
;                   |--------|----------|
;                   |                   |
;               (kRamawAnusAra)         meM_honA, sammiliwa_karanA  
;                     |
;                   atAnA
;
;sUwra : yukwa_honA^WAma
