;@@@ Added by Preeti(28-12-13)
;People often confuse me and my twin sister. 
;loga aksara muJa meM Ora merI judavAz bahana meM gadabada karawe hEM.
(defrule confuse1
(declare (salience 1050))
(id-root ?id confuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id2 conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadabada_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confuse.clp 	confuse1   "  ?id "  gadabada_kara )" crlf))
)

;@@@ Added by Preeti(28-12-13)
;I do not see how anyone could confuse me with my mother! 
;mEM nahIM pawA hE ki kEse koI muJa meM Ora merI mAz meM  gadabada_kara sakawA hE!
(defrule confuse2
(declare (salience 1050))
(id-root ?id confuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id  ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadabada_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confuse.clp 	confuse2   "  ?id "  gadabada_kara )" crlf))
)
;#############################Defaults rule#######################################
;@@@ Added by Preeti(28-12-13)
;These advertisements simply confused the public. 
;ye vijFApana  vAswava meM janawA ko ulaJA xewe hEM.
(defrule confuse0
(declare (salience 1000))
(id-root ?id confuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulaJA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confuse.clp 	confuse0   "  ?id "  ulaJA_xe )" crlf))
)
