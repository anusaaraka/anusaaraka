
(defrule expose0
(declare (salience 5000))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 him)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose0   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose0   "  ?id " kA )" crlf)
)
)

(defrule expose1
(declare (salience 4900))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 her)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose1   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose1   "  ?id "  kA )" crlf)
)
)

(defrule expose2
(declare (salience 4800))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 them)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose2   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose2   "  ?id " kA )" crlf)
)
)

(defrule expose3
(declare (salience 4700))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 me)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose3   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose3   "  ?id " kA )" crlf)
)
)

(defrule expose4
(declare (salience 4600))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 us)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose4   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose4   "  ?id " kA )" crlf)
)
)

(defrule expose5
(declare (salience 4500))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 you)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose5   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose5   "  ?id " kA )" crlf)
)
)

(defrule expose6
(declare (salience 4400))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose6   "  ?id "  Kola )" crlf))
)

;default_sense && category=verb	Kola	0
;"expose","VT","1.KolanA"
;He exposed the rampant corruption in his department through his article.
;--"2.vivaraNa"
;He published an expose of the graft && corruption government offices.
;
;
