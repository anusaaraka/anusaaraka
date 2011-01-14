
(defrule shatter0
(declare (salience 5000))
(id-root ?id shatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadZe_tukadZe_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shatter.clp 	shatter0   "  ?id "  tukadZe_tukadZe_kara_xe )" crlf))
)

(defrule shatter1
(declare (salience 4900))
(id-root ?id shatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadZe_tukadZe_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shatter.clp 	shatter1   "  ?id "  tukadZe_tukadZe_ho_jA )" crlf))
)

;"shatter","V","1.tukadZe tukadZe kara xenA yA ho jAnA"
;The big building was shattered when the bomb exploded.
;--"2.naRta karanA yA ho jAnA"
;My all hopes were shattered when the result was out.
;--"3.Cinna Binna karanA yA ho jAnA"
;The news of their son's death shattered them.
;
;
