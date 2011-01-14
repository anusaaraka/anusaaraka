
(defrule mesh0
(declare (salience 5000))
(id-root ?id mesh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mesh.clp 	mesh0   "  ?id "  jAlI )" crlf))
)

;"mesh","N","1.jAlI"
;Use a mesh to keep the mosquitoes away.
;--"2.jAla"
;The fish got stuck in the mesh.
;
(defrule mesh1
(declare (salience 4900))
(id-root ?id mesh)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAla_meM_PazsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mesh.clp 	mesh1   "  ?id "  jAla_meM_PazsA )" crlf))
)

(defrule mesh2
(declare (salience 4800))
(id-root ?id mesh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAla_meM_Pazsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mesh.clp 	mesh2   "  ?id "  jAla_meM_Pazsa )" crlf))
)

;"mesh","V","1.jAla_meM_PazsanA[PazsAnA]"
;They meshed the reptiles.
;
