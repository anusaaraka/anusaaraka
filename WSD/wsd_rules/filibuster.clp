
(defrule filibuster0
(declare (salience 5000))
(id-root ?id filibuster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya_meM_vilamba_karavAne_saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  filibuster.clp 	filibuster0   "  ?id "  kArya_meM_vilamba_karavAne_saMbaMXI )" crlf))
)

;"filibuster","Adj","1.kArya_meM_vilamba_karavAne_saMbaMXI"
;He always uses filibustering tactics to delay the work.
;
(defrule filibuster1
(declare (salience 4900))
(id-root ?id filibuster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya_meM_vilamba_karavAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  filibuster.clp 	filibuster1   "  ?id "  kArya_meM_vilamba_karavAnA )" crlf))
)

;"filibuster","N","1.kArya_meM_vilamba_karavAnA"
;The principal gave a filibuster speech to delay the work on new library building.
;
