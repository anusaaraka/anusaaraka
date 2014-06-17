;@@@ Added by Preeti(21-1-14)
;I have been taking classes in pottery.  [Oxford Advanced Learner's Dictionary]
;mEM kumhArI meM pATa lewA rahA hUz.
(defrule classes0
(declare (salience 5050))
(id-word ?id classes)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id) 
(id-root ?id1 take)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pATa))
(assert (id-wsd_root ?id class))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  classes.clp 	classes0   "  ?id "  pATa)" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  classes.clp     classes0   "  ?id " class)" crlf)
)

;@@@ Added by Preeti(21-1-14)
;The party tries to appeal to all classes of society. [Oxford Advanced Learner's Dictionary]
;pArtI samAja kI saba SreNiyoM ke liye anuroXa karane ke liye prayAsa karawI hE.
(defrule classes1
(declare (salience 5050))
(id-word ?id classes)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 society)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SreNI))
(assert (id-wsd_root ?id class))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  classes.clp 	classes1   "  ?id "  SreNI)" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  classes.clp     classes1   "  ?id " class)" crlf)
)

;@@@ Added by Preeti(21-1-14)
;The primary requisite of the University at the time was accommodation for post-graduate classes and a suitable library.[By mail]
;isa samaya viSvavixyAlaya kI  prAWamika jarurawa snAwakowwara kakRAoM Ora eka sahI puswakAlaya ke liye jagaha WI
(defrule classes2
(declare (salience 5000))
(id-word ?id classes)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kakRA))
(assert (id-wsd_root ?id class))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  classes.clp 	classes2   "  ?id "  kakRA)" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  classes.clp     classes2   "  ?id " class)" crlf)
)
