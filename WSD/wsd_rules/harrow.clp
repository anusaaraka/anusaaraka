
(defrule harrow0
(declare (salience 5000))
(id-root ?id harrow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id harrowing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xu:Kaxa))
)

;"harrowing","Adj","1.xu:Kaxa"
;Ravi gave him the harrowing news of his mother's death .
;ravI ne usako usakI mAz kI mqwyu kI xuKaxa KZabara xI .
;
(defrule harrow1
(declare (salience 4900))
(id-root ?id harrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hEro))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harrow.clp 	harrow0   "  ?id "  hEro )" crlf))
)

;"harrow","N","1.hEro{Kewa_meM_DZele_wodZane_kA_xAzwexAra_upakaraNa}"
;The farmer broke up the lumps of soil with a harrow . 
;kisAna ne apane Kewa ke DZele hEro xvArA wodZa dAle.
;
