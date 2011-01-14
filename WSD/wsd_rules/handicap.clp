
(defrule handicap0
(declare (salience 5000))
(id-root ?id handicap)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id handicapped )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vikalAMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  handicap.clp  	handicap0   "  ?id "  vikalAMga )" crlf))
)

;"handicapped","Adj","1.vikalAMga"
;sarakArI nOkariyOM meM"handicapped" logoM kA kotA surakRiwa hE.            
;
(defrule handicap1
(declare (salience 4900))
(id-root ?id handicap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asamarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handicap.clp 	handicap1   "  ?id "  asamarWa )" crlf))
)

;"handicap","N","1.asamarWa"
;usakA baharApana usakI pragawi meM"handicap"bana gayA.
;
;