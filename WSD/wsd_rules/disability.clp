;Priyank Bhatnagar  9/June/2011

;The defendant had a speech disability. 
;prawivAxI kI eka bolI vikalAMgawA WI.
;There is increase of 100 million dollars in disability benefits. 
;vikalAMgawA lABa meM 100 xasa-lAKa dOlara kI vqxXi hE.
(defrule disability0
(declare (salience 5100))
(id-root ?id disability)
?mng <-(meaning_to_be_decided ?id)
(or (viSeRya-viSeRaNa ?id ?)(viSeRya-with_saMbanXI ? ?id) (samAsa_viSeRya-samAsa_viSeRaNa ? ?id) (viSeRya-RaRTI_viSeRaNa ?id ?) (kriyA-object ? ?id) )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vikalAMgawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  disability.clp  	disability0   "  ?id "  vikalAMgawA )" crlf))
)

;Priyank Bhatnagar  9/June/2011
;One who becomes deranged is under a disability of holding his estate. 
;jo pAgala howA hE eka usakI riyAsawa pakadane kA ayogyawA_ke_nIce hE.
(defrule disability1
(declare (salience 5000))
(id-root ?id disability)
?mng <-(meaning_to_be_decided ?id)
(kriyA-under_saMbanXI ? ?id )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ayogyawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  disability.clp  	disability1   "  ?id "  ayogyawA )" crlf))
)
